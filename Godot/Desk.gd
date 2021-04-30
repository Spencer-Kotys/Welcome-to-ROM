extends Popup

func _on_MainCharacter_init_desk_dialogue():
	if global.time == "06:00":
		popup()

		var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
		dialog.dialog_script = [
		{
			'dialogue_start': 0
		},
		{
			'question': 'Would you like to work at your desk?',
			'options': [{ 'label': 'Yes', 'value': '0'},
						{ 'label': 'No', 'value': '1'}],
			'variable': 'work'
		},
		{
			'dialogue_end': 0
		}]
		add_child(dialog)

func _process(delta):
	if global.in_dialogue == false:
		if 'work' in global.custom_variables: # make sure the work variable is in the custom_variables dictioary to prevent errors from trying to use it before its been set
			if global.custom_variables.get('work').value == '0':
				global.custom_variables.get('work').value = '1'
				get_tree().change_scene("res://deskWork.tscn")
