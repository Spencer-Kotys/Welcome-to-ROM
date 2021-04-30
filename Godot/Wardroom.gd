extends Control

onready var video = get_node("WardroomScene")

func _on_Button_pressed():
	video.stop()
	if global.time == "12:00":
		global.timeAdd(1)
		globalTasks.formation_over = false
	globalTasks.morning_routine_over == true
	globalTasks.HS_dialogue_on = false # No talking to the HS after breakfast
	get_tree().change_scene("res://Spawn 2.tscn")


func _on_WardroomScene_finished():
	if global.time == "12:00":
		global.timeAdd(1)
		globalTasks.formation_over = false
	globalTasks.morning_routine_over == true
	globalTasks.HS_dialogue_on = false # No talking to the HS after breakfast
	get_tree().change_scene("res://Spawn 2.tscn")
