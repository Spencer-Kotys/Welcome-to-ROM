extends Popup

func _on_Ladderwell_body_entered(body):
	popup()

func _on_Ladderwell_body_exited(body):
	self.hide()


func _on_Wardroom_pressed():
	get_tree().change_scene("res://Wardroom.tscn")
	global.covidChance(3)


func _on_Formation_pressed():
	get_tree().change_scene("res://Formation.tscn")
	global.covidChance(1)


func _on_Chapel_pressed():
	pass # Replace with function body.


func _on_Colors_pressed():
	pass # Replace with function body.


func _on_CrownPark_pressed():
	pass # Replace with function body.


func _on_DryDock_pressed():
	pass # Replace with function body.


func _on_Gym_pressed():
	pass # Replace with function body.


func _on_Pool_pressed():
	pass # Replace with function body.


func _on_Walk_pressed():
	pass # Replace with function body.

