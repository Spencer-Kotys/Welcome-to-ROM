extends Popup
onready var panel = get_node("PopupPanel")

func _on_MainCharacter_window_popup():
	get_tree().paused = true
	popup()
	panel.popup()

func _on_Window_Popup_popup_hide():
	get_tree().paused = false
