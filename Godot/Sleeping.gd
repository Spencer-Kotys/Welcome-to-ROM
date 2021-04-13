extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	yield(get_tree().create_timer(1.0), "timeout")
	get_tree().change_scene("res://Room_No_Roommate.tscn")
