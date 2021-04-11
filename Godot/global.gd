extends Node

# Variable for Dialog
var custom_variables = {}

# Global Variables
var playerName = null # stores player's name
var playerGender = null # stores player's gender
var day = null # stores day value
var morale = null # stores morale value
var has_covid = null # true or false for if the player has covid
var bagged = null
var time_start = null
var time_end = null

# percent_chance would be an integer between 1 and 100
# so if you wanted a 5% chance of getting covid enter '5' into the function
func covidChance(percent_chance):
	# Generate a random int between 1 and 100
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var num = rng.randi_range(1, 100)
	#print(num)
	if num <= percent_chance:
		global.has_covid = true
		print("You got covid!")
		get_tree().change_scene("res://lose.tscn")
		time_end = OS.get_unix_time()
	
func bagChance(percent_chance):
	# Generate a random int between 1 and 100
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var num = rng.randi_range(1, 100)
	#print(num)
	if num <= percent_chance:
		global.bagged = true
		print("You have been bagged!")
