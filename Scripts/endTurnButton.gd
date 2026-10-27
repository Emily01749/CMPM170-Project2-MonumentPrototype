extends Control

@export var turn_number_label: Label
@export var worship_number_label: Label
var increment_turns: int = 1
var increment_worship_points: int = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	print("button pressed")
	increment_turns += 1
	increment_worship_points += 1
	
	turn_number_label.text = "%s" % increment_turns
	worship_number_label.text = "%s" % increment_worship_points
