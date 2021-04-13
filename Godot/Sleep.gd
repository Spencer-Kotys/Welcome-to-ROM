extends Popup

func _on_Player_Bed_body_entered(body):
	popup()


func _on_Player_Bed_body_exited(body):
	self.hide()
