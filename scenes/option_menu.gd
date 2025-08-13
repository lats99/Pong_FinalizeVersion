extends Control
@onready var option: CanvasLayer = $".."
@onready var option_layer: CanvasLayer = $".."

func _on_x_button_pressed() -> void:
	option.visible = false
	option_layer.visible = false
