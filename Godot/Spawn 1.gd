extends Node


func _on_Room_body_entered(body):
	get_tree().change_scene("res://Room_No_Roommate.tscn")
