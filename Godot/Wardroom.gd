extends Control

onready var video = get_node("WardroomScene")

func _on_Button_pressed():
	video.stop()
<<<<<<< Updated upstream
	globalAudio.play("res://music/Naoya-Sakamata-Dissociation.ogg")
	get_tree().change_scene("res://LevelMockup.tscn")


func _on_WardroomScene_finished():
	get_tree().change_scene("res://LevelMockup.tscn")
	globalAudio.play("res://music/Naoya-Sakamata-Dissociation.ogg")
=======
	#globalAudio.play("res://music/Naoya-Sakamata-Dissociation.ogg") done on next scene
	get_tree().change_scene("res://Spawn 2.tscn")


func _on_WardroomScene_finished():
	get_tree().change_scene("res://Spawn 2.tscn")
	#globalAudio.play("res://music/Naoya-Sakamata-Dissociation.ogg") done on next scene
>>>>>>> Stashed changes
