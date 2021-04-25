extends Control

onready var video = get_node("WardroomScene")

func _on_Button_pressed():
	video.stop()
	global.taskAssign("-Go to your room",1)
	get_tree().change_scene("res://Spawn 2.tscn")


func _on_WardroomScene_finished():
	global.taskAssign("-Go to your room",1)
	get_tree().change_scene("res://Spawn 2.tscn")
