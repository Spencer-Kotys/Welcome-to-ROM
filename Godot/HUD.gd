extends MarginContainer
onready var morale_meter = get_node("Control/MoraleMeter/MoraleProgress")

func _on_MainCharacter_morale_changed(morale):
	morale_meter.value = morale
	print(morale)
	
func _on_max_morale_changed(max_morale):
	morale_meter.max_value = max_morale

