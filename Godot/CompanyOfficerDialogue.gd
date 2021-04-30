extends Popup

func _on_MainCharacter_init_companyofficer_dialogue():
	popup()
	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	
	if global.day == '2' || global.day == '8' || global.day == '5':
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
		{
			'dialogue_end': 0
		}]
	elif global.day == '4' || global.day == '11':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Company Officer 4.json")
	elif global.day == '1' || global.day == '7' || global.day == '10' || global.day == '13':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Company Officer 7.json")
	elif global.day == '3' || global.day == '6' || global.day == '9':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Company Officer 9.json")
	elif global.day == '12':
		dialog.dialog_script = global.read_JSON("res://assets/Dialogue Files/Company Officer 12.json")
	
	add_child(dialog)
