extends Popup

func _on_MainCharacter_init_hs_dialogue():
	popup()
	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	if global.screening_form_complete: # check if form is complete
		dialog.dialog_script = [
		{
			'dialogue_start': 0
		},
		{
			'name': 'HS3', 'text': 'My name is HS3.'
		},
		{
			'name': 'HS3', 'text': 'Thank you for turning in your screeing form, have a nice day!'
		},
		{
			'dialogue_end': 0
		}]
		global.screening_form_complete = false # set completion to false
	else:
		dialog.dialog_script = [
		{
			'dialogue_start': 0
		},
		{
			'name': 'HS3', 'text': 'My name is HS3.'
		},
		{
			'name': 'HS3', 'question': 'How are you feeling?',
			'options': [
				{ 'label': 'amazing', 'value': 'That is amazing. Who knew such a thing was possible in ROM?'},
				{ 'label': 'good', 'value': 'Well, that is good. Have an even better day'},
				{ 'label': 'fine', 'value': 'Hmm. I hope fine is good.'},
				{ 'label': 'okay', 'value': 'Ok, but you need to be feeling better soon.'},
				{ 'label': 'not good', 'value': 'Morale is low, huh? I guess that is to be expected.'},
				{ 'label': 'terrible', 'value': 'Uh oh. That is not good. You need to go talk to someone and get happier.'}
			],
			'variable': 'feel'
		},
		{
			'name': 'HS3', 'text': 'You feel [feel]. feel.value'
		},
		
		#This needs to somehow link to a separate dialogue if you need something from the clinic @spencer or anyone OR we don't have to do this.
		
		{
			'name': 'HS3', 'question': 'Do you need anything from the clinic?',
			'options': [
				{ 'label': 'Yes', 'value': 'do'},
				{ 'label': 'No', 'value': 'do not'}
			],
			'variable': 'clinic_need'
		},
		{
			'name': 'HS3', 'question': 'Are you sure you clinic_need.value need something from the clinic?',
			'options': [
				{ 'label': 'No, let think about it.', 'value': '0'},
				{ 'label': 'Yes!', 'value': '1'}
			],
			'checkpoint': '-2'
		},
		{
			'dialogue_end': 0
		}]
	add_child(dialog)

