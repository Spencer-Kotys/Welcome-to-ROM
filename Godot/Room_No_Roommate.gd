extends Node2D

func _ready():
	$DoorSound.play()

func _on_ExitRoom_body_entered(body):
	get_tree().change_scene("res://Spawn 3.tscn")
	
