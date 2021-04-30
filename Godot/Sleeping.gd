extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	var day = int(global.day)
	if (6 < int(global.time)/100):
		day = day + 1
	if (14 == day):
		print("You Win")
		get_tree().change_scene("res://Win.tscn")
	elif (global.has_covid == true):
		get_tree().change_scene("res://lose_covid.tscn")
	elif (global.bagged == true):
		get_tree().change_scene("res://lose_covid.tscn")
	else:
		global.day = str(day)
		global.time = "06:00" # reset time
		yield(get_tree().create_timer(1.0), "timeout")
		
		# 50% chance of your roommate being in the room with you after waking up
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		var num = rng.randi_range(1, 100)
		if num <= 50:
			get_tree().change_scene("res://Room_With_Roommate.tscn")
		else: 
			get_tree().change_scene("res://Room_No_Roommate.tscn")
