extends Node2D
var CO_dialogue_on = false
var friend_dialogue_on = false
var HS_dialogue_on = false
var window_wait_on = true
var desk_on = true
var morning_routine_over = false
var colors = true
var formation_over = false
var is_workday = true

func _process(delta):
	if global.day == "1":
		day_1()
	if global.day == "2":
		day_2()
	if global.day == "3":
		day_3()
	if global.day == "4":
		day_4()
	if global.day == "5":
		day_5()
	if global.day == "6":
		day_6()
	if global.day == "7":
		day_7()
	if global.day == "8":
		day_8()
	if global.day == "9":
		day_9()
	if global.day == "10":
		day_10()
	if global.day == "11":
		day_11()
	if global.day == "12":
		day_12()
	if global.day == "13":
		day_13()
	if global.day == "14":
		day_14()

func morning_routine():
	friend_dialogue_on = false
	is_workday = true
	if global.time == "06:00":
		global.taskAssign("Fill out Medical \nScreening form \non Desk.",0)
	if global.screening_form_complete == true:
		if global.time == "06:00":
			global.taskAssign("Turn in Screening Form",1)
			get_tree().change_scene("res://Room_No_Roommate.tscn")
			globalTasks.HS_dialogue_on = true
	if global.screening_form_complete == false and global.time == "07:00" and colors == true:
		global.taskAssign("Go to Colors.", 1)
	if global.screening_form_complete == false and global.time == "07:00":
		global.taskAssign("Go to Breakfast.",1)


func day_1():
	if morning_routine_over == false:
		morning_routine()
	elif global.time == "09:00":
		global.taskAssign("Go for a walk.", 0)
	elif global.time == "10:00":
		global.timeAdd(2)
	elif global.time == "12:00" and formation_over == false:
		global.taskAssign("Go to Formation.", 0)
	elif global.time == "13:00":
		global.taskAssign("Speak with Company Officer.", 0)
		CO_dialogue_on = true
		if global.co_interact == true:
			global.timeAdd(3)
			CO_dialogue_on = false
			global.co_interact = false
	elif global.time == "16:00":
		global.taskAssign("Do as you wish.", 0)
		is_workday = false
		friend_dialogue_on = true
	elif global.time == "22:00":
		global.taskAssign("It's bedtime!", 0)

func day_2():
	if morning_routine_over == false:
		morning_routine()

func day_3():
	if morning_routine_over == false:
		morning_routine()

func day_4():
	if morning_routine_over == false:
		morning_routine()

func day_5():
	if morning_routine_over == false:
		morning_routine()

func day_6():
	if morning_routine_over == false:
		morning_routine()

func day_7():
	if morning_routine_over == false:
		morning_routine()

func day_8():
	if morning_routine_over == false:
		morning_routine()

func day_9():
	if morning_routine_over == false:
		morning_routine()

func day_10():
	if morning_routine_over == false:
		morning_routine()

func day_11():
	if morning_routine_over == false:
		morning_routine()

func day_12():
	if morning_routine_over == false:
		morning_routine()
	
func day_13():
	if morning_routine_over == false:
		morning_routine()

func day_14():
	if morning_routine_over == false:
		morning_routine()
