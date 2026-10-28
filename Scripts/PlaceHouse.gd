extends Sprite2D
var object_to_place: PackedScene = preload("res://Scenes/green_house.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			place_object(event.position)
			
func place_object(_mouse_pos: Vector2) -> void:
	if not object_to_place:
		return
		
	var new_obj = object_to_place.instantiate()
	get_tree().current_scene.add_child(new_obj)
	new_obj.global_position = get_global_mouse_position()
	
