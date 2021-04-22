extends Popup

func _on_MainCharacter_init_cadet1_dialogue():
	popup()
	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	dialog.dialog_script = [
	{
		'dialogue_start': 0
	},
	{
		'name': 'Friend', 'text': 'Hello shipmate.'
	},
	{
		'name': 'Friend', 'input': 'What is going on?',
		'window_title': 'Response:',
		'variable': 'currentstate'
	},
	{
		'name': 'Friend', 'text': 'Hmm well you should know I am hungry.'
	},
		{
		'dialogue_end': 0
	}]
	add_child(dialog)


