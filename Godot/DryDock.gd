extends Control

onready var video = get_node("DryDockScene")

func _on_Button_pressed():
	video.stop()
	global.timeAdd(1)
	get_tree().change_scene("res://Spawn 2.tscn")


func _on_DryDockScene_finished():
	global.timeAdd(1)
	get_tree().change_scene("res://Spawn 2.tscn")
