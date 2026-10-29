extends Sprite2D
var object_to_place: PackedScene = preload("res://Scenes/green_house.tscn")
@export var worship_number_label: Label
var count_houses: int = 0
var subtract_worship_points: int = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#label.visible = false
	#line_edit.visible = false
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	var worshipPoints = int($"../WorshipNumber".text)
	#print(l)
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			if count_houses < 3:
				place_object(event.position)
			if worshipPoints >= 2:
				place_object(event.position)
				worshipPoints = worshipPoints - subtract_worship_points
				#print(l)
				worship_number_label.text = "%s" %worshipPoints
			
func place_object(_mouse_pos: Vector2) -> void:
	if not object_to_place:
		return
		
	var new_obj = object_to_place.instantiate()
	get_tree().current_scene.add_child(new_obj)
	new_obj.global_position = get_global_mouse_position()
	count_houses += 1
	#print(count_houses)
	


		
