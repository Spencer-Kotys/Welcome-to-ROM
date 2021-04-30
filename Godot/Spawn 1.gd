extends Node

func _ready():
	globalAudio.play("res://music/Mournful-Departure-Asher-Fulero.ogg")
	$DoorSound.play()
	
func _on_Room_body_entered(body):
	# 50% chance of your roommate being in the room when you go in
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var num = rng.randi_range(1, 100)
	if num <= 50:
		get_tree().change_scene("res://Room_With_Roommate.tscn")
	else: 
		get_tree().change_scene("res://Room_No_Roommate.tscn")
