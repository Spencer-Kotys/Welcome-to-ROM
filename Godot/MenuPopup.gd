extends Popup

func _process(delta):
	if Input.is_action_pressed("pause"):
		get_tree().paused = true
		print("hello")
		popup()


func _on_Resume_toggled(button_pressed):
	get_tree().paused = false

func _on_MainMenu_pressed():
	get_tree().change_scene("res://startScreen.tscn")
	get_tree().paused = false

func _on_Quit_pressed():
	get_tree().quit()
