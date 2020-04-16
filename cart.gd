extends KinematicBody

var direction = Vector3()
var speed = 200
var velocity = Vector3()
var g = -9.8

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
	direction = direction * speed
	velocity.y += g*delta
	velocity.x = direction.x
	velocity.z = direction.z
	if velocity.y > 0:
		g = -29.4
	else:
		g = -9.8
	
	#move_and_collide(velocity)
	velocity = move_and_slide(velocity, Vector3(0,-1,0))
		
	if Input.is_key_pressed(KEY_SPACE):
		velocity.y = 20
	
