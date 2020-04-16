extends KinematicBody

var direction = Vector3()

func _physics_process(delta):
	direction = Vector3(0,0,0)
	if Input.is_key_pressed(KEY_UP):
		direction.z -= 10
	if Input.is_key_pressed(KEY_DOWN):
		direction.z += 10
	if Input.is_key_pressed(KEY_LEFT):
		direction.x -= 10
	if Input.is_key_pressed(KEY_RIGHT):
		direction.x += 10
	direction = direction.normalized()
	move_and_collide(direction)
	#move_and_slide(direction, Vector3(0,1,0))
