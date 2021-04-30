extends Control

onready var video = get_node("FormationScene")

func _on_Button_pressed():
	video.stop()
	globalTasks.formation_over = true
	global.taskAssign("Go to Lunch", 0)
	get_tree().change_scene("res://Spawn 2.tscn")


func _on_FormationScene_finished():
	globalTasks.formation_over = true
	global.taskAssign("Go to Lunch", 0)
	get_tree().change_scene("res://Spawn 2.tscn")
