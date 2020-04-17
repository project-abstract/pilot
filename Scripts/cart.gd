extends KinematicBody

var direction = Vector3()
var speed = 200
var velocity = Vector3()
var angle = 0

func _physics_process(delta):
	direction = Vector3(0,0,0)
	if Input.is_key_pressed(KEY_UP):
		direction.z -= 10*cos(deg2rad(angle))
		direction.x -= 10*sin(deg2rad(angle))
	if Input.is_key_pressed(KEY_DOWN):
		direction.z += 10*cos(deg2rad(angle))
		direction.x += 10*sin(deg2rad(angle))
	if Input.is_key_pressed(KEY_LEFT):
		#direction.x -= 10
		angle += 10
		rotate_y(deg2rad(10))
	if Input.is_key_pressed(KEY_RIGHT):
		#direction.x += 10
		angle -= 10
		rotate_y(deg2rad(-10))
	direction = direction.normalized()
	direction = direction * speed * delta
	velocity.x = direction.x
	velocity.z = direction.z
	velocity = move_and_slide(velocity, Vector3(0,-1,0))
	
	if angle == -10 :
		angle = 350
	if angle == 360:
		angle = 0
	
	if Input.is_key_pressed(KEY_SPACE):
		print('Angle:rad deg',deg2rad(angle),'+' ,angle)
		print('Angle: cos sin',cos(deg2rad(angle)),'+',sin(deg2rad(angle)))
		print('Velocity:', velocity.x,'+' ,velocity.z)
		#velocity.y = 20
