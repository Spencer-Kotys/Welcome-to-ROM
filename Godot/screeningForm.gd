extends Control

func _on_Complete_pressed():
	if '' == $CenterContainer/VBoxContainer/NameEdit.text: # checks if empty
		$CenterContainer/VBoxContainer/Warning.visible = true
	elif '' == $CenterContainer/VBoxContainer/CompanyEdit.text: # checks if empty
		$CenterContainer/VBoxContainer/Warning.visible = true
	else:
		get_tree().change_scene("res://Room_No_Roommate.tscn")
