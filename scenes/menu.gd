extends Control
@onready var main_menu: VBoxContainer = $MarginContainer/MainMenu
@onready var option: CanvasLayer = $Option

func _ready() -> void:
	option.visible = false

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pong.tscn")


func _on_options_pressed() -> void:
	option.visible = true


func _on_quit_pressed() -> void:
	get_tree().quit()
