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
	get_tree().change_scene("res://Chapel.tscn")


func _on_Colors_pressed():
	get_tree().change_scene("res://Colors.tscn")


func _on_CrownPark_pressed():
	get_tree().change_scene("res://CrownPark.tscn")


func _on_DryDock_pressed():
	get_tree().change_scene("res://DryDock.tscn")


func _on_Gym_pressed():
	get_tree().change_scene("res://Gym.tscn")


func _on_Pool_pressed():
	get_tree().change_scene("res://Pool.tscn")


func _on_Walk_pressed():
	get_tree().change_scene("res://Walk.tscn")

