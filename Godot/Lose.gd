extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	globalAudio.play("res://music/I_ll-Remember-You-Jeremy-Blake.ogg")


func _on_Continue_pressed():
	globalAudio.stop()
	get_tree().change_scene("res://startScreen.tscn")
