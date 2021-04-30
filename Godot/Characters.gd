extends Node2D
onready var Cadet1 = get_node("Cadet1")
onready var Cadet1_collision = get_node("Cadet1/CollisionShape2D")
onready var HS = get_node("HS")
onready var HS_collision = get_node("HS/CollisionShape2D")
onready var CO = get_node("Company Officer")
onready var CO_collision = get_node("Company Officer/CollisionShape2D")

# This ensures the characters without active dialogue don't show up
func _process(delta):
	if globalTasks.friend_dialogue_on == false:
		Cadet1.hide()
		Cadet1_collision.disabled = true
	else: 
		Cadet1_collision.disabled = false
		Cadet1.show()
	if globalTasks.HS_dialogue_on == false:
		HS_collision.disabled = true
		HS.hide()
	else: 
		HS_collision.disabled = false
		HS.show()
	if globalTasks.CO_dialogue_on == false:
		CO_collision.disabled = true
		CO.hide()
	else: 
		CO_collision.disabled = false
		CO.show()
