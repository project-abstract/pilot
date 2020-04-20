extends RigidBody

var picked = false

func _process(delta):
	rotate_x(deg2rad(30*delta))
	rotate_y(deg2rad(30*delta))



func _on_toiletpaper_body_entered(body):
	if body is KinematicBody:
		if Input.is_key_pressed(KEY_E):
			queue_free()
