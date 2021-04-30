extends Popup


func _on_MainCharacter_init_roommate_dialogue():
	popup()

	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	
	
	if global.day == '1' || global.day == '4' || global.day == '9' || global.day == '13':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Roommate 1.json")
	elif global.day == '2' || global.day == '7' || global.day == '11':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Roommate 2.json")
	elif global.day == '5' || global.day == '6' || global.day == '8':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Roommate 4.json")
	elif global.day == '3' || global.day == '10' || global.day == '12':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Roommate 6.json")
		
	add_child(dialog)
