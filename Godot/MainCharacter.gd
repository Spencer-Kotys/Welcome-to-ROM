extends KinematicBody2D

# Variables from other nodes
onready var sprite = get_node("Sprite")
onready var dialogue_timer = get_node("dialogue_timer")
onready var new_scene_timer = get_node("new_scene_timer")

# Signals
signal add_morale
signal subtract_morale
signal task_changed
signal init_greenboy_dialogue
signal init_companyofficer_dialogue
signal init_hs_dialogue
signal init_cadet1_dialogue
signal window_popup
signal init_bed_dialogue
signal init_roommate_dialogue
signal init_desk_dialogue

var dialogue_cooldown = false
var new_scene_cooldown = true

# Movement Variables
var speed = 75
var move_direction = Vector2(0,0)
var anim_direction = "Not Set"
var anim_mode = "Idle"

func _ready():
	# this is to prevent the main character immediately detecting being in the area of everything in the new scene
	var new_scene_cooldown = true
	new_scene_timer.start() # timer runs for 1 second upon loading into a new scene

func _physics_process(delta):
	MovementLoop()

func _process(delta):
	AnimationLoop()

func MovementLoop():
	# Saves player direction so it can be used for the idle animations

	move_direction.x = int(Input.is_action_pressed("right")) - int(Input.is_action_pressed("left"))
	move_direction.y = (int(Input.is_action_pressed("down")) - int(Input.is_action_pressed("up"))) / float(2) # The division by float(2) allows for diagonal movement
	var motion = move_direction.normalized() * speed
	move_and_slide(motion)

	# Collision detection, detect what is being collided with
	for index in get_slide_count():
		var collision = get_slide_collision(index)
		if collision.collider is StaticBody2D && Input.is_action_just_pressed("ui_accept") && dialogue_cooldown == false:
			if collision.collider.name == "Player Bed":
				start_dialogue()
				emit_signal("init_bed_dialogue")
			elif collision.collider.name == "Window":
				print("This is a window")
				global.taskAssign("-demo",1) # THIS IS FOR DEV PURPOSES ONLY
			elif collision.collider.name == "Green Boy":
				start_dialogue() # <- Call this before every dialogue event
				emit_signal("init_greenboy_dialogue")
			elif collision.collider.name == "Company Officer":
				start_dialogue() # <- Call this before every dialogue event
				emit_signal("init_companyofficer_dialogue")
				emit_signal("subtract_morale", 20) # lose 20 morale on interaction with company officer
			elif collision.collider.name == "HS":
				start_dialogue() # <- Call this before every dialogue event
				emit_signal("init_hs_dialogue")
			elif collision.collider.name == "Cadet1":
				start_dialogue() # <- Call this before every dialogue event
				emit_signal("init_cadet1_dialogue")
				emit_signal("add_morale", 20) # gain 20 morale talking to shipmate
			elif collision.collider.name == "Roommate":
				start_dialogue() # <- Call this before every dialogue event
				emit_signal("init_roommate_dialogue")
			elif collision.collider.name == "Right Desk":
				print("This is your desk")
				start_dialogue() # <- Call this before every dialogue event
				emit_signal("init_desk_dialogue")
func AnimationLoop():
	var animation
	match move_direction:
		Vector2(-1,0):
			# Direction is actually WEST
			# anim_direction is set to EAST b/c the West animation is just a flipped version of the East one
			anim_direction = "East"
			sprite.set_flip_h(true)
	match move_direction:
		Vector2(1,0):
			anim_direction = "East"
			sprite.set_flip_h(false)
	match move_direction:
		Vector2(0,0.5):
			anim_direction = "South"
	match move_direction:
		Vector2(0,-0.5):
			anim_direction = "North"
	match move_direction:
		Vector2(-1,-0.5):
			# Direction is actually North West
			# Set to East so the flipped East animation plays
			anim_direction = "East"
			sprite.set_flip_h(true)
	match move_direction:
		Vector2(-1,0.5):
			# Direction is actually South West
			# Set to East so the flipped East animation plays
			anim_direction = "East"
			sprite.set_flip_h(true)
	match move_direction:
		Vector2(1,-0.5):
			# Direction is actually North East
			# Set to East so the East animation plays
			anim_direction = "East"
			sprite.set_flip_h(false)
	match move_direction:
		Vector2(1,0.5):
			# Direction is actually South East
			# Set to East so the East animation plays
			anim_direction = "East"
			sprite.set_flip_h(false)
	if move_direction != Vector2(0,0):
		anim_mode = "Walk"
		globalAudio.sound_effect("Footstep_Tile_Left.ogg")
	else:
		anim_mode = "Idle"

	# If player hasn't entered any movement directions yet, sets East as direction
	if anim_direction == "Not Set":
		anim_direction = "South"

	animation = anim_direction + "_" + anim_mode
	sprite.play(animation)

func _on_Area2D_body_entered(body):
	if new_scene_cooldown == false:
		print("Green boy area entered")
		global.covidChance(1)

func _on_COarea_body_entered(body):
	if new_scene_cooldown == false:
		print("CO area entered")
		global.bagChance(5)

func _on_HSarea_body_entered(body):
	if new_scene_cooldown == false:
		print("HS area entered")
		global.covidChance(1)

func _on_Cadet1area_body_entered(body):
	if new_scene_cooldown == false:
		print("Cadet 1 area entered")
		global.covidChance(2)

func _on_dialogue_timer_timeout():
	dialogue_cooldown = false

# starts dialogue cooldown, and ensures that the idle animation plays when player is in dialogue
# CALL BEFORE STARTING AND DIALOGUE EVENT
func start_dialogue():
	dialogue_cooldown = true
	dialogue_timer.start()
	sprite.play(anim_direction + "_Idle")


func _on_new_scene_timer_timeout():
	new_scene_cooldown = false
