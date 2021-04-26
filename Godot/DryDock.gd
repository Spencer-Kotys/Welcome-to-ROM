extends Control

onready var video = get_node("DryDockScene")

func _on_Button_pressed():
	video.stop()
	get_tree().change_scene("res://Spawn 2.tscn")


func _on_DryDockScene_finished():
	get_tree().change_scene("res://Spawn 2.tscn")
