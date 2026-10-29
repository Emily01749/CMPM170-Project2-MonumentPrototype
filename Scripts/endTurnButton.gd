extends Control

@export var turn_number_label: Label
@export var worship_number_label: Label
var increment_turns: int = 1
var increment_worship_points: int = 1

func _on_button_pressed() -> void:
	#print("button pressed")
	var worshipPoints = int($"../WorshipNumber".text)
	var turn = int($"../TurnNumber".text)
	turn = turn + increment_turns
	worshipPoints = worshipPoints + increment_worship_points
	
	turn_number_label.text = "%s" %turn
	worship_number_label.text = "%s" %worshipPoints
