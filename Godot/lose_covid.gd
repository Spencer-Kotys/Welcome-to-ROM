extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	globalAudio.play("res://music/I_ll-Remember-You-Jeremy-Blake.ogg")
	$CenterContainer/VBoxContainer/Score.text = "You lasted " + str(global.day) + ' day(s) before getting covid!'


func _on_Continue_pressed():
	globalAudio.stop()
	get_tree().change_scene("res://startScreen.tscn")
