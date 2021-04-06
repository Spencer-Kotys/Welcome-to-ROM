extends Popup

func _ready():
	popup()
	var dialog = load("res://addons/dialogs/Dialog.tscn").instance()
	dialog.dialog_script = [
		{
		'fade-in': 2
		},

		{
		'text': 'Welcome to the dialog node! You can pick options'
		},
		{
		'question': 'Choose your favourite color',
		'options': [
			{ 'label': 'Red', 'value': '#f7411d'},
			{ 'label': 'Blue', 'value': '#1da0f7'}
			],
		'variable': 'fav_color'
	},
	]
	add_child(dialog)
