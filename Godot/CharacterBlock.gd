extends Popup

func _on_MainCharacter_init_greenboy_dialogue():
	popup()
	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	dialog.dialog_script = [
	{
		'dialogue_start': 0
	},
	{
		'text': 'Hello Kaydet!'
	},
	{
		'question': 'Pick your gender:',
		'options': [
			{ 'label': 'Male', 'value': 'male'},
			{ 'label': 'Female', 'value': 'female'}
		],
		'variable': 'player_gender'
	},
	{
		'text': 'You picked the gender: [player_gender].'
	},
	{
		'question': 'Are you sure you want to be a [player_gender]?',
		'options': [
			{ 'label': 'No, let me pick again', 'value': '0'},
			{ 'label': 'Yes!', 'value': '1'}
		],
		'checkpoint': '-3'
	},
	{
		'input': 'What is your name Kaydet?',
		'window_title': 'Write your name',
		'variable': 'player_name'
	},
	{
		'text': 'So, your name is [player_name] and you are a [player_gender].'
	},
	{
		'dialogue_end': 0
	}]
	add_child(dialog)
	
