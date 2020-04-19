extends Area



func _process(delta):
	rotate_x(deg2rad(30*delta))
	rotate_y(deg2rad(30*delta))
