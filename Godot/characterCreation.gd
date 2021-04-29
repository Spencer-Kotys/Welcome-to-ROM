extends Control


# Declare member variables here. Examples:
var Names = ["Alexander", "Alexandra", "Julia", "Hannah", "Spencer"]
var nameInt = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Name_Generator_pressed():
	$CenterContainer/VBoxContainer/Name_HBox/Character_Name.text = Names[nameInt]
	if nameInt < (Names.size() - 1):
		nameInt = nameInt + 1
	else:
		nameInt = 0


func _on_Male_pressed():
	$CenterContainer/VBoxContainer/Gender.text = "Male"


func _on_Female_pressed():
	$CenterContainer/VBoxContainer/Gender.text = "Female"


func _on_Continue_pressed():
	global.playerName = $CenterContainer/VBoxContainer/Name_HBox/Character_Name.text # set global character name
	global.playerGender = $CenterContainer/VBoxContainer/Gender.text # set global character gender
	get_tree().change_scene("res://Room_With_Roommate.tscn")
