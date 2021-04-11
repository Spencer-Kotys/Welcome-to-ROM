extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	globalAudio.play("res://music/I_ll-Remember-You-Jeremy-Blake.ogg")
	var score = global.time_end - global.time_start
	print(score)
	$CenterContainer/VBoxContainer/Score.text = str(score)


func _on_Continue_pressed():
	globalAudio.stop()
	get_tree().change_scene("res://startScreen.tscn")
