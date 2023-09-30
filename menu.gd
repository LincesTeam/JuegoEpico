extends PanelContainer



func _on_new_game_pressed():
	SceneTransition01.change_scene_to_file("res://world.tscn")


func _on_quit_pressed():
	SceneTransition01.quit()


func _on_options_pressed():
	SceneTransition01.change_scene_to_file("res://intermedio_partida.tscn")
