extends KinematicBody

var direction = Vector3()
export var velocity : int = 10000

func _physics_process(_delta):
	direction = Vector3(0,0,0)
	if Input.is_key_pressed(KEY_UP):
		direction.z -= velocity
	if Input.is_key_pressed(KEY_DOWN):
		direction.z += velocity
	if Input.is_key_pressed(KEY_LEFT):
		direction.x -= velocity
	if Input.is_key_pressed(KEY_RIGHT):
		direction.x += velocity
	direction = direction.normalized()
	move_and_collide(direction)
	#move_and_slide(direction, Vector3.UP)
