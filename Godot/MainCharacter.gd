extends KinematicBody2D

onready var sprite = get_node("Sprite")
onready var dialog = get_node("Root/CanvasLayer/Control/Dialog")

# Morale Meter stuff
signal morale_changed
signal task_changed
signal init_dialogue

var morale = 50 # starting value for player morale

var speed = 300
var move_direction = Vector2(0,0)

func _physics_process(delta):
	MovementLoop()
	
func _process(delta):
	AnimationLoop()
	
func MovementLoop():
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
	var anim_direction = "S"
	var anim_mode = "Idle"
	var animation
	match move_direction:
		Vector2(-1,0):
			anim_direction = "W"
			sprite.set_flip_h(true)
	match move_direction:
		Vector2(1,0):
			anim_direction = "E"
			sprite.set_flip_h(false)
	match move_direction:
		Vector2(0,0.5):
			anim_direction = "S"
	match move_direction:
		Vector2(0,-0.5):
			anim_direction = "N"
	match move_direction:
		Vector2(-1,-0.5):
			anim_direction = "NW"
			sprite.set_flip_h(true)
	match move_direction:
		Vector2(-1,0.5):
			anim_direction = "SW"
			sprite.set_flip_h(true)
	match move_direction:
		Vector2(1,-0.5):
			anim_direction = "NE"
			sprite.set_flip_h(false)
	match move_direction:
		Vector2(1,0.5):
			anim_direction = "SE"
			sprite.set_flip_h(false)
	if move_direction != Vector2(0,0):
		anim_mode = "Running"
	else:
		#sprite.stop()
		anim_mode = "Idle"
	sprite.play(anim_mode)

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

