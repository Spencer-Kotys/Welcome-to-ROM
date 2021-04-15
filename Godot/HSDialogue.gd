extends Popup

func _on_MainCharacter_init_hs_dialogue():
	popup()
	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	dialog.dialog_script = [
	{
		'dialogue_start': 0
	},
	{
		'text': 'My name is HS3 Gooblatz.'
	},
	{
		'question': 'How are you feeling?',
		'options': [
			{ 'label': 'amazing', 'value': '5'},
			{ 'label': 'good', 'value': '4'},
			{ 'label': 'fine', 'value': '3'},
			{ 'label': 'okay', 'value': '2'},
			{ 'label': 'not good', 'value': '1'},
			{ 'label': 'terrible', 'value': '0'}
		],
		'variable': 'feel'
	},
	{
		'text': 'Okay. You are feeling [feel], have a better day.'
	},
	{
		'dialogue_end': 0
	}]
	add_child(dialog)

