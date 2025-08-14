extends Control

signal close

@onready var audio_control: HSlider = $MarginContainer/Panel/AudioControl
@onready var fullscreen_control: CheckButton = $MarginContainer/Panel/FullscreenControl

func _ready() -> void:
	var video_settings = ConfigFileHandler.load_video_settings()
	fullscreen_control.button_pressed = video_settings.fullscreen
	
	var audio_settings = ConfigFileHandler.load_audio_settings()
	audio_control.value = min(audio_settings.volume, 1.0) * 20

func _on_x_button_pressed() -> void:
	close.emit()


func _on_audio_control_drag_ended(value_changed: bool) -> void:
	if value_changed:
		ConfigFileHandler.save_audio_setting("volume", audio_control.value / 20)


func _on_fullscreen_control_toggled(toggled_on: bool) -> void:
	ConfigFileHandler.save_video_setting("fullscreen", toggled_on)
