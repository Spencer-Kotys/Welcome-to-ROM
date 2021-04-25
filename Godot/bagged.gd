extends Control


func _on_Button_pressed():
	global.bagged = false
	get_tree().change_scene("res://Spawn 3.tscn")
