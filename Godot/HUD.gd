extends MarginContainer
onready var morale_meter = get_node("Control/MoraleMeter/MoraleProgress")
onready var task_label = get_node("Control/Task/NinePatchRect/Task_Label")
var max_morale = 100
var min_morale = 0
var morale

func _ready():
	morale_meter.max_value = 100
	morale_meter.min_value = 0

func _process(delta):
	morale_meter.value = global.morale
	$Control/DayCounter/Background/Day.text = global.day
	$Control/Task/NinePatchRect/Task_Label.text = global.task
	$Control/Time/NinePatchRect/Time.text = global.time

func _on_MainCharacter_task_changed():
	pass # Replace with function body.
