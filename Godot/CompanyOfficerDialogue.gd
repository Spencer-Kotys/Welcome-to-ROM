extends Popup

func _on_MainCharacter_init_companyofficer_dialogue():
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
			{ 'label': 'My room.', 'value': 'to your room. Do not interact with anyone else and get there quickly. Do not contract COVID on the way.'},
			{ 'label': 'The Wardroom.', 'value': 'to the Wardroom. I guess that is acceptable. Make sure you sit at your table and wipe your area when you are done.'},
			{ 'label': 'Formation.', 'value': 'to formation. Get there quickly. I have information to pass to the company.'},
			{ 'label': 'Nowhere, just standing in the hall.', 'value': 'nowhere?!?! If you do not have a plan, you should not leave the safety of your room. You are being very unsafe by leaving your room with no plan.'}
		],
		'variable': 'destination'
	},
	{
		'text': 'So you are going destination.value'
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
