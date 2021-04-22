extends Popup

func _on_MainCharacter_init_bed_dialogue():
	popup()

	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	if "22:00" == global.time:
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
	else:
		dialog.dialog_script = [
		{
			'dialogue_start':0
		},
		{
			'text': 'You cannot sleep yet'
		},
		{
			'dialogue_end': 0
		}
		]
	add_child(dialog)
	
func _process(delta):
	if global.in_dialogue == false:
		if 'sleep' in global.custom_variables: #make sure the sleep variable is in the custom_variables dictioary to prevent errors from trying to use it before its been set
			if global.custom_variables.get('sleep').value == '0':
				global.custom_variables.get('sleep').value = '1'
				get_tree().change_scene("res://Sleeping.tscn")
