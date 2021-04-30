extends Control

onready var video = get_node("ChapelScene")

func _on_Button_pressed():
	video.stop()
	global.timeAdd(1)
	global.add_morale(5)
	global.covidChance(1)
	get_tree().change_scene("res://Spawn 2.tscn")


func _on_ChapelScene_finished():
	global.timeAdd(1)
	global.add_morale(5)
	global.covidChance(1)
	get_tree().change_scene("res://Spawn 2.tscn")
