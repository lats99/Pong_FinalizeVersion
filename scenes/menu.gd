extends Control
@onready var main_menu: VBoxContainer = $MarginContainer/MainMenu
@onready var option: CanvasLayer = $Option

func _ready() -> void:
	#option.visible = false
	option.hide()

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pong.tscn")

func _on_options_pressed() -> void:
	option.show()

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_option_menu_close() -> void:
	option.hide()
