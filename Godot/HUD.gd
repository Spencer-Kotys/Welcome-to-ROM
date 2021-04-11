extends MarginContainer
onready var morale_meter = get_node("Control/MoraleMeter/MoraleProgress")
onready var task_label = get_node("Control/Task/NinePatchRect/Task_Label")
var max_morale = 100
var min_morale = 0

func _ready():
	# Sets min iand max morale at 0 and 100 to ensure no under or over-filling
	morale_meter.max_value = 100
	morale_meter.min_value = 0
	
func _on_MainCharacter_morale_changed():
	morale_meter.value = global.morale
	
func _on_max_morale_changed(max_morale):
	morale_meter.max_value = max_morale

func _on_MainCharacter_task_changed(task):
	task_label.text = task
