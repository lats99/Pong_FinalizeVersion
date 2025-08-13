extends Control
@onready var option_layer: CanvasLayer = $"../../OptionLayer"

func _ready() -> void:
	$AnimationPlayer.play("RESET")
	option_layer.visible = false

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	
func pause():
	get_tree().paused = true
	$AnimationPlayer.play('blur')
	
func testEsc():
	if Input.is_action_just_pressed("esc") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused == true:
		resume()
		
func _on_resume_pressed() -> void:
	resume()

func _on_restart_pressed() -> void:
	resume()
	get_tree().reload_current_scene()

func _on_option_pressed() -> void:
	option_layer.visible = true

func _on_main_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file('res://scenes/menu.tscn')


func _on_quit_pressed() -> void:
	get_tree().quit()

func _process(_delta: float) -> void:
	testEsc()
