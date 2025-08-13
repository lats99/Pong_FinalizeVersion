extends Control

signal close

func _on_x_button_pressed() -> void:
	close.emit()
