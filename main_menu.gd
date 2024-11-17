extends Control

func _on_start_pressed() -> void:
	#get_tree().change_scene_to_file("res://main_menu.tscn");
	get_parent().show_menu("main_menu");


func _on_options_pressed() -> void:
	#get_tree().change_scene_to_file("res://main_menu_options.tscn");
	get_parent().show_menu("main_menu_options");


func _on_exit_pressed() -> void:
	get_tree().quit();
