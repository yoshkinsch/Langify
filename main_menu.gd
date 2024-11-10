extends Control

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn");


func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu_options.tscn");


func _on_exit_pressed() -> void:
	get_tree().quit();
