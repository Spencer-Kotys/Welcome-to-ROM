extends KinematicBody2D

# Variables from other nodes
onready var sprite = get_node("Sprite")
onready var dialog = get_node("Root/CanvasLayer/Control/Dialog")

# Signals
signal morale_changed
signal task_changed
signal init_dialogue

var morale = 50 # starting value for player morale

# Movement Variables
var speed = 200
var move_direction = Vector2(0,0)
var anim_direction = "Not Set"

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
		#if collision.collider.is_in_group("npcs") <- This right here would detect if the player bumped into another NPC
		#if user collides with a static body, their morale goes down by 10
		if collision.collider is StaticBody2D && Input.is_action_just_pressed("ui_accept"):
			get_tree().paused = true # MUST call this pause before EVERY dialogue initiation!!
			emit_signal("init_dialogue")
func AnimationLoop():
	var anim_mode = "Idle"
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
	print(animation)
	sprite.play(animation)

func _on_Area2D_body_entered(body):
	print("Entered the area!")
	morale = morale - 10
	morale = clamp(morale, 0, 100) # <-- this is important! it keeps morale from going over or under 100!
	emit_signal("morale_changed", morale)
	emit_signal("task_changed", "Leave the area!")

func _on_Area2D_body_exited(body):
	print("Exited the area!")
	morale = morale + 20
	morale = clamp(morale, 0, 100) # <-- this is important! it keeps morale from going over or under 100!
	emit_signal("morale_changed", morale)
	emit_signal("task_changed", "Enter the area!")

