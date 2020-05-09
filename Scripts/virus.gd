extends RigidBody



func _physics_process(delta):
	rotate_x(deg2rad(30*delta))
	rotate_y(deg2rad(30*delta))
