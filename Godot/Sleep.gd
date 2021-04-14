extends Popup
var in_dialogue = false

func _on_MainCharacter_init_bed_dialogue():
	popup()

	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	dialog.dialog_script = [
	{
		'dialogue_start': 0
	},
	{
		'question': 'Would you like to go to bed?',
		'options': [{ 'label': 'Yes', 'value': '0'},
					{ 'label': 'No', 'value': '1'}],
		'variable': 'sleep'
	},
	{
		'dialogue_end': 0
	}]
	add_child(dialog)
