extends Popup

func _on_MainCharacter_init_yellowboy_dialogue():
	popup()
	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	dialog.dialog_script = [
	{
		'dialogue_start': 0
	},
	{
		'text': 'Hello.'
	},
	{
		'question': 'Where are you going?',
		'options': [
			{ 'label': 'My room', 'value': 'room'},
			{ 'label': 'The wardroom', 'value': 'wardroom'},
			{ 'label': 'Formation', 'value': 'formation'},
			{ 'label': 'Nowhere, I am just standing in the hall', 'value': 'nowhere'}
		],
		'variable': 'destination'
	},
	{
		'text': 'So you are going to  [destination].'
	},
	#{
	#if destination == 'nowhere':
	#	'text': 'You need to choose somewhere to go. Exit the area as soon as possible.'
	#else:
	#	'text': 'Very well. Please go directly there.'
	#},
	
	{
		'dialogue_end': 0
	}]
	add_child(dialog)
