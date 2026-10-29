extends Node
@onready var line_edit: LineEdit = $LineEdit
@onready var label: Label = $Label
@onready var count = %Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.visible = false
	line_edit.visible = false
	line_edit.text_submitted.connect(_on_LineEdit_text_entered)

func _process(_delta: float) -> void:
	if count.count_houses > 2 &&  count.count_houses % 3 == 0:
		label.visible = true
		line_edit.visible = true
		
	else:
		line_edit.visible = false
		
func _on_LineEdit_text_entered(new_text: String) -> void:
	label.text = new_text
	line_edit.visible = false
