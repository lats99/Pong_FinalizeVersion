extends Control
#@onready var option: CanvasLayer = $".."
#@onready var option_layer: CanvasLayer = $".."
signal close

func _on_x_button_pressed() -> void:
	close.emit()
