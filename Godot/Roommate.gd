extends Popup


func _on_MainCharacter_init_roommate_dialogue():
	popup()

	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Roommate_1.json")
	add_child(dialog)
