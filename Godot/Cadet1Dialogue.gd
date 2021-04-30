extends Popup

func _on_MainCharacter_init_cadet1_dialogue():
	popup()
	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	
	if global.day == '12':
		dialog.dialog_script = [
		{
			'dialogue_start': 0
		},
		{
			'name': 'Friend', 'text': 'Hello shipmate.'
		},
		{
			'name': 'Friend', 'input': 'What\'s going on?',
			'window_title': 'Response:',
			'variable': 'currentstate'
		},
		{
			'name': 'Friend', 'text': 'Hmm well you should know I\'m hungry.'
		},
			{
			'dialogue_end': 0
		}]
	elif global.day == '5' || global.day == '9':
		[
		{"dialogue_start": 0},
		{
			"name": "Friend", "input": "What task are you trying to complete?",
			"window_title": "",	"variable": "task"
		},
		{
			"name": "Friend", "question": "Forget [task]. Why don't we just ignore that and go live it up in my room?",
			"options": [
				{"label": "LETS GO PARTAY.", "value": "Are you KIDDING? LET\'s! Oh wait COVID policy states you can't come in my room sorry."},
				{"label": "Is that such a good idea?", "value": "Well of course. Unless you don't want to get in trouble, which is important to me so you can't come."},
				{"label": "Have you read the 18 page rule book? Definately not.", "value": "Oh rightttt, forgot that tiny detail."},
				{"label": "No way!", "value": "Good, I didn't want you to come anyways."}
			],
		"variable": "party"
		},
		{
			"name": "Friend", "text": "party.value"
		},
	
		{"dialogue_end": 0}  
		]
	elif global.day == '1' || global.day == '10' || global.day == '8':
		[
			{"dialogue_start": 0},
			{
				"name": "Friend", "question": "So what company are you in?",
				"options": [
					{"label": "Alfa", "value": "Ahh the Gators."},
					{"label": "Bravo", "value": "So the Bulls have come to play then."},
					{"label": "Charlie", "value": "Ssssso you\'re Cobrasssss."},
					{"label": "Delta", "value": "What up Dawg?"},
					{"label": "Echo", "value": "Fly high, Eagle."},
					{"label": "Foxtrot", "value": "Stop Floundering around fishy."},
					{"label": "Golf", "value": "Get psyched, it\'s the Gophers."},
					{"label": "Hotel", "value": "Hammerheads are swimming in hot, ready for the kill."}
				],
				"variable": "company"
			},
			{
				"name": "Friend", "text": "So [company]. company.value"
			},
			{"dialogue_end": 0}  
		]
	elif global.day == '2' || global.day == '6' || global.day == '4' || global.day == '11':
		[
			{"dialogue_start": 0},
			{
			"name": "Friend", "text": "Hey, what do you think is for dinner?"
			},
			{
				"name": "Friend", "question": "Hmmm",
				"options": [
					{"label": "chicken", "value": "Expected."},
					{"label": "more chicken", "value": "I see you, optimist that you are."},
					{"label": "rice", "value": "It's all about the side dishes then."},
					{"label": "pizza", "value": "Classic, you can never go wrong with a slice of pizza."},
					{"label": "peas and carrots", "value": "Green and orange, my two favorite colors."},
					{"label": "mixed vegetables", "value": "Are these better than a salad?"},
					{"label": "potato wedges", "value": "Or really any potatoes."},
					{"label": "slab of tofu (I love being vegetarian)", "value": "Ahh yes me too. What's not to love."}
				],
				"variable": "menu"
			},
			{
				"name": "Friend", "text": "menu.value But seriously, [menu] does make sense."
			},
			{"dialogue_end": 0}  
		]
	elif global.day == '3' || global.day == '13':
		[
			{"dialogue_start": 0},
			{
			"name": "Friend", "text": "Have you heard?! Summer assignments are out this week!"
			},
			{
				"name": "Friend", "text": "Where do you want to go?"
			},
			{
				"name": "Friend", "question": "Hmm?",
				"options": [
					{"label": "A station in Maine", "value": "3/c Meisner and 3/c Murphy agree with that for sure!"},
					{"label": "ANY AIR STATION", "value": "Rotor-head ay?"},
					{"label": "Alameda, California", "value": "West coast best coast."},
					{"label": "Icebreaker on the West Coast", "value": "Yeah, you and everyone else."},
					{"label": "Great Lakes baby", "value": "Interesting, I want a buoy tender personally."},
					{"label": "Small cutter in Florida", "value": "Nice!"},
					{"label": "Sector anything", "value": "Not a fan of boats ay?"},
					{"label": "Washington DC", "value": "Have fun in SDBs all summer."},
					{"label": "11 week Eagle", "value": "Interesting choice..."}
				],
				"variable": "preference"
			},
			{ 
				"name": "Friend", "text": "preference.value"
			},
			{"dialogue_end": 0}  
		]
	elif global.day == '7':
		[
			{"dialogue_start": 0},
			{
				"name": "Friend", "text": "Hello sHiPmaTe"
			},
			{"dialogue_end": 0}  
		]
	
	add_child(dialog)
