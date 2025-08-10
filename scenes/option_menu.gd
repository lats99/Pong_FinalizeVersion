extends Control
@onready var option: CanvasLayer = $".."
@onready var option_layer: CanvasLayer = $".."
#@onready var pause_menu: Control = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#PressEsc()

func _on_x_button_pressed() -> void:
	option.visible = false
	option_layer.visible = false

#func PressEsc():
	#if Input.is_action_just_pressed('esc'):
		#if option.visible == true:
			#option.visible = false
		#elif option_layer.visible == true:
			#option_layer.visibel = false

#func _ready() -> void:
	#pause_menu.testEsc()
	
