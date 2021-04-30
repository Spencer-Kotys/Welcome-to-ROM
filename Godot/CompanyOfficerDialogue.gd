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
		[
			{"dialogue_start": 0},
			{
				"name": "Company Officer", "text": "Hey how\'s it going"
			},
			{
				"name": "Company Officer", "question": "Cadet, have you been social distancing?",
				"options": [
					{"label": "Yes, of course Sir.", "value": "Very well. Keep doing your job and stay healthy."},
					{"label": "Most of the time Sir.", "value": "You need to be more careful, but this is acceptable. Don\'t bring Coronavirus into my wing area."},
					{"label": "You see me social distancing, right Sir?", "value": "That\'s a yes or no question. Sure, I may see you social distancing but your response makes me think you are not when in private."},
					{"label": "No, Sir.", "value": "Are you kidding me? How do you expect to stay healthy when you are interacting with other humans in close proximity???"}
				],
				"variable": "distancing"
			},
			{
				"name": "Company Officer", "text": "distancing.value"
			},
			{"dialogue_end": 0}  
		]
	elif global.day == '1' || global.day == '7' || global.day == '10' || global.day == '13':
		[
			{"dialogue_start": 0},
			{
				"name": "Company Officer", 
				"question": "On a scale of 1-5, how much do you miss your family or pets?",
				"options": [
					{"label": "1", "value": "Keep on keeping on."},
					{"label": "2", "value": "Keep busy with all the Chase Hall activities here in ROM. That\'ll help."},
					{"label": "3", "value": "You should go talk to your roomate, that may help."},
					{"label": "4", "value": "I guess it\'s hard not to think about, but try the Wardroom. They\'re super friendly and will let you eat your sorrow."},
					{"label": "5", "value": "Please go talk to the HS, they will have a way to help you."}
				],
				"variable": "homesick"
			},
			{
				"name": "Company Officer", "text": "homesick.value"
			},
			{"dialogue_end": 0}  
		]
	elif global.day == '3' || global.day == '6' || global.day == '9':
		[
			{"dialogue_start": 0},
			{
				"name": "Company Officer", 
				"input": "What has your favorite part of ROM been so far?",
				"window_title": "",
				"variable": "favorite"
			},
			{
				"name": "Company Officer", "text": "I can see how that would be nice."
			},
			{"dialogue_end": 0}  
		]
	elif global.day == '12':
		[
			{"dialogue_start": 0},
			{
				"name": "Company Officer", 
				"question": "How is the social distancing going?",
				"options": [
					{"label": "Yes, without fail Sir.", "value": "Are you sure? This far into ROM and you haven\'t broken COVID protocols yet? Good for you."},
					{"label": "Most of the time Sir.", "value": "Honest answer, I appreciate that. Stay strong and do great things."},
					{"label": "I\'m usually working out so yeah", "value": "If you are alone, then that\'s fine. As for going on partner runs or yoga in the grass, I expect 15 feet of space."},
					{"label": "No, Sir.", "value": "Oh well, you\'re almost done. What could go wrong?"}
				],
				"variable": "distancing"
			},
			{
				"name": "Company Officer", "text": "distancing.value"
			},
			{"dialogue_end": 0}  
		]
	
	add_child(dialog)
