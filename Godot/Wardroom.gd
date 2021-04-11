extends Control

onready var video = get_node("WardroomScene")

func _ready():
	globalAudio.stop()

func _on_Button_pressed():
	video.stop()
	#globalAudio.play("res://music/Naoya-Sakamata-Dissociation.ogg") done on next scene
	get_tree().change_scene("res://LevelMockup.tscn")


func _on_WardroomScene_finished():
	get_tree().change_scene("res://LevelMockup.tscn")
	#globalAudio.play("res://music/Naoya-Sakamata-Dissociation.ogg") done on next scene
