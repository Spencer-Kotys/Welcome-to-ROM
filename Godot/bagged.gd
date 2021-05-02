extends Control


func _on_Button_pressed():
	var day = int(global.day)
	if (6 < int(global.time)/100):
		day = day + 1
	
	globalTasks.morning_routine_over = false
	global.day = str(day)
	global.time = "06:00" # reset time
	yield(get_tree().create_timer(1.0), "timeout")
	get_tree().change_scene("res://Room_With_Roommate.tscn")
