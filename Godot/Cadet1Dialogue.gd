extends Popup

func _on_MainCharacter_init_cadet1_dialogue():
	popup()
	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	
	if global.day == '12':
		dialog.dialog_script = [
		{
			'dialogue_start': 0
		},
		{
			'name': 'Friend', 'text': 'Hello shipmate.'
		},
		{
			'name': 'Friend', 'input': 'What\'s going on?',
			'window_title': 'Response:',
			'variable': 'currentstate'
		},
		{
			'name': 'Friend', 'text': 'Hmm well you should know I\'m hungry.'
		},
			{
			'dialogue_end': 0
		}]
	elif global.day == '5' || global.day == '9':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Cadet 1 3.json")
	elif global.day == '1' || global.day == '10' || global.day == '8':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Cadet 1 5.json")
	elif global.day == '2' || global.day == '6' || global.day == '4' || global.day == '11':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Cadet 1 6.json")
	elif global.day == '3' || global.day == '13':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Cadet 1 9.json")
	elif global.day == '7':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Cadet 1 11.json")
	
	add_child(dialog)
