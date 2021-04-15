extends MarginContainer
onready var morale_meter = get_node("Control/MoraleMeter/MoraleProgress")
onready var task_label = get_node("Control/Task/NinePatchRect/Task_Label")
var max_morale = 100
var min_morale = 0
var morale

func _ready():
	# Sets min iand max morale at 0 and 100 to ensure no under or over-filling
	morale_meter.max_value = 100
	morale_meter.min_value = 0
	morale_meter.value = 50

func _process(delta):
	morale_meter.value = global.morale
	$Control/DayCounter/Background/Day.text = global.day

func _on_MainCharacter_add_morale(add_amount):
	morale = global.morale
	morale = morale + add_amount
	morale = clamp(morale, 0, 100)
	global.morale = morale


func _on_MainCharacter_subtract_morale(subtract_amount):
	morale = global.morale
	morale = morale - subtract_amount
	morale = clamp(morale, 0, 100)
	global.morale = morale


