extends Control


# Declare member variables here. Examples:
var maleNames = ["Male", "Bob", "Billy", "Billybob", "Alexander", "Spencer"]
var maleInt = 0
var femaleNames = ["Female", "Alice", "Alexandra", "Hannah", "Julia"]
var femaleInt = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Male_pressed():
	$CenterContainer/VBoxContainer/Character_Name.text = maleNames[maleInt]
	if maleInt < (maleNames.size() - 1):
		maleInt = maleInt + 1
	else:
		maleInt = 0


func _on_Female_pressed():
	$CenterContainer/VBoxContainer/Character_Name.text = femaleNames[femaleInt]
	if femaleInt < (femaleNames.size() - 1):
		femaleInt = femaleInt + 1
	else:
		femaleInt = 0


func _on_Continue_pressed():
	get_tree().change_scene("res://LevelMockup.tscn")
