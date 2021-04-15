extends Popup

func _on_MainCharacter_init_cadet1_dialogue():
	popup()
	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	dialog.dialog_script = [
	{
		'dialogue_start': 0
	},
	{
		'text': 'Hello shipmate.'
	},
	{
		'input': 'What is going on?',
		'window_title': 'Response:',
		'variable': 'currentstate'
	},
	{
		'text': 'I do not know about [currentstate], but you should know I am hungry.'
	},
		{
		'dialogue_end': 0
	}]
	add_child(dialog)


