extends Popup

func _process(delta):
	if Input.is_action_pressed("pause"):
		if get_tree().paused == true: #when esc is pressed, game is still paused...
			get_tree().paused = false
			hide()
			print("hello")
		else:
			get_tree().paused = true
		popup()

func _on_MainMenu_pressed():
	get_tree().change_scene("res://startScreen.tscn")
	get_tree().paused = false
	hide()

func _on_Quit_pressed():
	get_tree().quit()

func _on_Resume_pressed():
	get_tree().paused = false
	hide()
