extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Play_Game_pressed():
	pass # Replace with function body.


func _on_How_To_Play_pressed():
	pass # Replace with function body.


func _on_Credits_pressed():
	get_tree().change_scene("res://credits.tscn")
	pass # Replace with function body.


func _on_Quit_pressed():
	get_tree().quit()
	pass # Replace with function body.
