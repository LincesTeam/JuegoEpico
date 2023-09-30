extends Node

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().paused = not get_tree().paused
		$Popup/AudioStreamPlayer.play()
		$Popup.visible = not $Popup.visible	

func _on_Bottom_Pressed() -> void:
	get_tree().quit()
