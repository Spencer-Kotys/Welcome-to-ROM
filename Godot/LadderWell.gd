extends Popup
onready var wardroom_button = get_node("CenterContainer/VBoxContainer/Wardroom")
onready var formation_button = get_node("CenterContainer/VBoxContainer/Formation")
onready var walk_button = get_node("CenterContainer/VBoxContainer/Walk")
onready var dryDock_button = get_node("CenterContainer/VBoxContainer/DryDock")
onready var gym_button = get_node("CenterContainer/VBoxContainer/Gym")
onready var chapel_button = get_node("CenterContainer/VBoxContainer/Chapel")
onready var colors_button = get_node("CenterContainer/VBoxContainer/Colors")
onready var crownPark_button = get_node("CenterContainer/VBoxContainer/CrownPark")
onready var pool_button = get_node("CenterContainer/VBoxContainer/Pool")
onready var label = get_node("CenterContainer/VBoxContainer/Label")

func _process(delta):
	# Hides the label asking where you want to go between 0600-0700
	if global.time == "06:00" or global.time == "07:00":
		label.hide()
	elif global.time == "22:00" or global.time == "23:00" or global.time == "00:00" or global.time == "01:00" or global.time == "02:00" or global.time == "03:00" or global.time == "04:00" or global.time == "05:00":
		label.text = "It's time for bed."
	else:
		label.text = "Where do you want to go?"
		label.show()
	# Can only go to the wardroom at 0800, 1200, and 1800
	if global.task == "Go to Lunch." or global.task == "Go to Breakfast.":
		wardroom_button.show()
	else:
		wardroom_button.hide()
	# Can only go to formation at 1200
	if global.time == "12:00" and globalTasks.formation_over == false:
		formation_button.show()
	else:
		formation_button.hide()
	# Can only go for a walk if it's assigned as a task or it's between 1600 and 1900
	if global.task == "Go for a walk." or global.time == "16:00" or global.time == "17:00" or global.time == "18:00" or global.time == "19:00":
		walk_button.show()
	else:
		walk_button.hide()
	# Can only go to Dry Dock if it's assigned as a task or between the hours of 1600-1900
	if global.task == "Go to Dry Dock." or global.time == "16:00" or global.time == "17:00" or global.time == "18:00" or global.time == "19:00":
		dryDock_button.show()
	else:
		dryDock_button.hide()
	# Can only go to the gym if it's assigned as a task or between the hours of 1600-2100
	if global.task == "Go to the Gym." or global.time == "16:00" or global.time == "17:00" or global.time == "18:00" or global.time == "19:00" or global.time == "20:00" or global.time == "21:00":
		gym_button.show()
	else:
		gym_button.hide()
	# Can only go to the chapel if it's assigned as a task or between the hours of 1600-1800
	if global.task == "Go to the Chapel." or global.time == "16:00" or global.time == "17:00" or global.time == "18:00":
		chapel_button.show()
	else:
		chapel_button.hide()
	# Can only go to colors if its assigned
	if global.task == "Go to Colors.":
		colors_button.show()
	else:
		colors_button.hide()
	# Can only go to Crown Park if its assigned or between the hours of 16-19
	if global.task == "Go to Crown Park." or global.time == "16:00" or global.time == "17:00" or global.time == "18:00" or global.time == "19:00":
		crownPark_button.show()
	else:
		crownPark_button.hide()
	if global.task == "Go to the Pool." or global.time == "16:00" or global.time == "17:00" or global.time == "18:00" or global.time == "19:00":
		pool_button.show()
	else:
		pool_button.hide()

func _on_Ladderwell_body_entered(body):
	popup()

func _on_Ladderwell_body_exited(body):
	self.hide()


func _on_Wardroom_pressed():
	get_tree().change_scene("res://Wardroom.tscn")
	global.covidChance(3)


func _on_Formation_pressed():
	get_tree().change_scene("res://Formation.tscn")
	global.covidChance(1)


func _on_Chapel_pressed():
	get_tree().change_scene("res://Chapel.tscn")


func _on_Colors_pressed():
	get_tree().change_scene("res://Colors.tscn")


func _on_CrownPark_pressed():
	get_tree().change_scene("res://CrownPark.tscn")


func _on_DryDock_pressed():
	get_tree().change_scene("res://DryDock.tscn")


func _on_Gym_pressed():
	get_tree().change_scene("res://Gym.tscn")


func _on_Pool_pressed():
	get_tree().change_scene("res://Pool.tscn")


func _on_Walk_pressed():
	get_tree().change_scene("res://Walk.tscn")

