extends Control

onready var video = get_node("ColorsScene")

func _on_Button_pressed():
	video.stop()
	global.timeAdd(1)
	globalTasks.colors = false
	globalTasks.morning_routine_over = true	
	get_tree().change_scene("res://Spawn 2.tscn")


func _on_ColorsScene_finished():
	global.timeAdd(1)
	globalTasks.morning_routine_over = true
	globalTasks.colors = false
	get_tree().change_scene("res://Spawn 2.tscn")
