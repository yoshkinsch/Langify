# MenuMain.gd
extends Node

var main_menu_scene = preload("res://main_menu.tscn")
var main_menu_options_scene = preload("res://main_menu_options.tscn")

var current_menu = null

func _ready():
	# Start playing background music
	$MusicPlayer.play()

	# Instance and show the Main Menu initially
	show_menu("main_menu")

func show_menu(menu_name: String):
	# Remove the current menu if one exists
	if current_menu != null:
		current_menu.visible = false;

	# Based on the menu name, instance and add the corresponding scene
	match menu_name:
		"main_menu":
			current_menu = main_menu_scene.instantiate()
		"main_menu_options":
			current_menu = main_menu_options_scene.instantiate()
		_:
			return # No valid menu name

	# Add the new menu to the scene tree
	add_child(current_menu)
	current_menu.visible = true;
