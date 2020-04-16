# pilot: Project COV3D
Well very first game from us

Import file through Godot startup and run menu.tscn as default scene. Escape to return to main menu.

The game will run at 1 FPS inside GODOT to change that alter the following in test.tscn to make it 60 FPSish:

change:
func _process(delta):
	...

to:

func _process(delta1):
	var delta = 1
	...
