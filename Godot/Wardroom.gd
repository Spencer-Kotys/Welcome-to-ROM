extends Control

onready var video = get_node("WardroomScene")



func _on_Button_pressed():
	video.stop()
	get_tree().change_scene("res://LevelMockup.tscn")


func _on_WardroomScene_finished():
	get_tree().change_scene("res://LevelMockup.tscn")
