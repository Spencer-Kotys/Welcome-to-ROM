extends Popup

func _on_Player_Bed_body_entered(body):
	popup()


func _on_Player_Bed_body_exited(body):
	self.hide()


func _on_Button_pressed():
	get_tree().change_scene("res://Sleeping.tscn")
