extends Popup


func _on_MainCharacter_init_roommate_dialogue():
	popup()

	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	
	
	if global.day == '1' || global.day == '4' || global.day == '9' || global.day == '13':
		[
			{"dialogue_start": 0},
			{"name": "Roommate", "text": "Hey how\'s it going?"},
			{"dialogue_end": 0}  
		]
	elif global.day == '2' || global.day == '7' || global.day == '11':
		[
			{"dialogue_start": 0},
			{
				"name": "Roommate", "text": "Hey how\'s life outside the room?"
			},
			{
				"name": "Roommate", "text": "Just peachy, I expect. I could stay trapped in here forever though, no matter how nice the day."
			},
			{"dialogue_end": 0}  
		]
	elif global.day == '5' || global.day == '6' || global.day == '8':
		[
			{"dialogue_start": 0},
			{
				"name": "Roommate", "text": "You should go look out the window. OCS is getting wrecked out there."
			},
			{"dialogue_end": 0}  
		]
	elif global.day == '3' || global.day == '10' || global.day == '12':
		[
			{"dialogue_start": 0},
			{
				"name": "Roommate", "text": "Check your computer."
			},
			{"dialogue_end": 0}  
		]
	add_child(dialog)
