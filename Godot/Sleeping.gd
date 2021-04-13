extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	var day = int(global.day)
	day = day + 1
	if (14 == day):
		print("You Win")
	else:
		global.day = str(day)
		yield(get_tree().create_timer(1.0), "timeout")
		get_tree().change_scene("res://Room_No_Roommate.tscn")
