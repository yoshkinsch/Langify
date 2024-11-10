# Camera2D.gd
extends Camera2D

# Variables for world and screen dimensions
var world_width = 2500
var world_height = 1080
var screen_width = 1920
var screen_height = 1080

func _ready():
	# Set the camera limits
	limit_left = 0
	limit_right = world_width - screen_width
	limit_top = -world_height + screen_height
	limit_bottom = 0
	# Make this camera active
	current = true
