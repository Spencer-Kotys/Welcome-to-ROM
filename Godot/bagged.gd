extends Control


func _on_Button_pressed():
	global.bagged = false
	global.time = "06:00"
	get_tree().change_scene("res://Spawn 3.tscn")
