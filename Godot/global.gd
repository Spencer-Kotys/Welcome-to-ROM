extends Node

# Variable for Dialog
var custom_variables = {}

# Global Variables
var playerName = null # stores player's name
var playerGender = null # stores player's gender
var day = "1" # stores day value
var morale = 50 # stores morale value
var has_covid = true # true or false for if the player has covid
var bagged = null
var in_dialogue = null
var co_interact = false
var screening_form_complete = false # is screeing from complete
var task = "Fill out Medical \nScreening form \non Desk." # stores task
var time = "06:00" # stores time value


# percent_chance would be an integer between 1 and 100
# so if you wanted a 5% chance of getting covid enter '5' into the function
func covidChance(percent_chance):
	# Generate a random int between 1 and 100
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var num = rng.randi_range(1, 100)
	print("Covid Chance Num:" + String(num))
	if num <= percent_chance:
		global.has_covid = true
		print("You got covid!")

func bagChance(percent_chance):
	# Generate a random int between 1 and 100
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var num = rng.randi_range(1, 100)
	#print(num)
	if num <= percent_chance:
		global.bagged = true
		print("You have been bagged!")

func add_morale(add_amount):
	morale = global.morale + add_amount
	morale = clamp(morale, 0, 100)
	global.morale = morale


func subtract_morale(subtract_amount):
	morale = global.morale
	morale = morale - subtract_amount
	morale = clamp(morale, 0, 100)
	global.morale = morale

# Returns inputted JSON file as text that can be loaded into dialog_script
func read_JSON(path):
	var file = File.new()
	file.open(path, file.READ)
	var text = file.get_as_text()
	return parse_json(text)

# Changes task and adds to time when complete
func taskAssign(newTask, addedTime):
	task = newTask
	var tTime = (int(time)/100) + int(addedTime)
	if (23 < tTime):
		time = "0" + str(tTime-24) + ":00"
		day = str(int(day) + 1) # Increase day when reaching midnight
	elif (10 > tTime):
		time = "0" + str(tTime) + ":00"
	else:
		time = str(tTime) + ":00"

# Just increases time without adding a new task
func timeAdd(addedTime):
	var tTime = (int(time)/100) + int(addedTime)
	if (23 < tTime):
		time = "0" + str(tTime-24) + ":00"
		day = str(int(day) + 1) # Increase day when reaching midnight
	elif (10 > tTime):
		time = "0" + str(tTime) + ":00"
	else:
		time = str(tTime) + ":00"
