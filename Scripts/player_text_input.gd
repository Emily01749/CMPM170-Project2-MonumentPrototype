extends Node
@onready var line_edit: LineEdit = $LineEdit
@onready var label: Label = $Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	line_edit.text_submitted.connect(_on_LineEdit_text_entered)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_LineEdit_text_entered(new_text: String) -> void:
	label.text = new_text
	line_edit.visible = false
