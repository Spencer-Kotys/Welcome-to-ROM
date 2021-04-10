extends Control

onready var video = get_node("WardroomScene")

func _ready():
	GlobalAudio.stop()

func _on_Button_pressed():
	video.stop()
	GlobalAudio.play("res://music/Naoya-Sakamata-Dissociation.ogg")
	get_tree().change_scene("res://LevelMockup.tscn")


func _on_WardroomScene_finished():
	get_tree().change_scene("res://LevelMockup.tscn")
	GlobalAudio.play("res://music/Naoya-Sakamata-Dissociation.ogg")
