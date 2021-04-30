extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	# Reset variables back to original states
	global.morale = 50
	global.has_covid = false
	global.bagged = false
	global.time = "06:00"
	global.day = "1"
	if (globalAudio.is_playing != true): # checkes if music is already playing
		globalAudio.play("res://music/Naoya-Sakamata-Dissociation.ogg") #plays audio
	else:
		pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Play_Game_pressed():
	get_tree().change_scene("res://characterCreation.tscn")


func _on_How_To_Play_pressed():
	get_tree().change_scene("res://howToPlay.tscn")


func _on_Credits_pressed():
	get_tree().change_scene("res://credits.tscn")


func _on_Quit_pressed():
	get_tree().quit()


func _on_Test_Scene_pressed():
	get_tree().change_scene("res://Room_With_Roommate.tscn")


func _on_Wardroom_pressed():
	get_tree().change_scene("res://Wardroom.tscn")
