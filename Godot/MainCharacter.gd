extends KinematicBody2D

# Variables from other nodes
onready var sprite = get_node("Sprite")
onready var dialogue_timer = get_node("dialogue_timer")

# Signals
signal add_morale
signal subtract_morale
signal task_changed
signal init_dialogue

var dialogue_cooldown = false

# Movement Variables
var speed = 75
var move_direction = Vector2(0,0)
var anim_direction = "Not Set"
var anim_mode = "Idle"

# local vars

func _ready():
	global.morale = 50; # Player's morale starts at 50

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

		if collision.collider is StaticBody2D && Input.is_action_pressed("ui_accept") && dialogue_cooldown == false:
			start_dialogue() # <- Call this before every dialogue event
			emit_signal("init_dialogue")
			
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
	else:
		anim_mode = "Idle"
	
	# If player hasn't entered any movement directions yet, sets East as direction
	if anim_direction == "Not Set":
		anim_direction = "East"
		
	animation = anim_direction + "_" + anim_mode
	sprite.play(animation)

func _on_Area2D_body_entered(body):
	emit_signal("add_morale", 20)

func _on_dialogue_timer_timeout():
	dialogue_cooldown = false

# starts dialogue cooldown, and ensures that the idle animation plays when player is in dialogue
# CALL BEFORE STARTING AND DIALOGUE EVENT
func start_dialogue():
	dialogue_cooldown = true
	dialogue_timer.start()
	sprite.play(anim_direction + "_Idle")

func _on_Ladderwell_area_entered(area):
	pass # Replace with function body.
