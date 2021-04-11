extends Control

onready var video = get_node("FormationScene")

func _on_Button_pressed():
	video.stop()
	#globalAudio.play("res://music/Naoya-Sakamata-Dissociation.ogg") done on next scene
	get_tree().change_scene("res://Spawn 2.tscn")


func _on_FormationScene_finished():
	get_tree().change_scene("res://Spawn 2.tscn")
