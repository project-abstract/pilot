extends KinematicBody

var direction = Vector3()
var speed = 200
var velocity = Vector3()
var angle = 0
var gravity = -9.8

func _physics_process(deltal):
	var delta = 1
	direction = Vector3(0,0,0)
	if Input.is_action_pressed("ui_up"):
		direction.z -= 10*cos(deg2rad(angle))
		direction.x -= 10*sin(deg2rad(angle))
	if Input.is_action_pressed("ui_down"):
		direction.z += 10*cos(deg2rad(angle))
		direction.x += 10*sin(deg2rad(angle))
	if Input.is_action_pressed("ui_left"):
		#direction.x -= 10
		angle += 10
		rotate_y(deg2rad(10))
	if Input.is_action_pressed("ui_right"):
		#direction.x += 10
		angle -= 10
		rotate_y(deg2rad(-10))
	if Input.is_key_pressed(KEY_SPACE):
		print(self.transform)
#		if velocity.y == 0:
#			velocity.y = 150*delta
	if velocity.y > 0:
		gravity = -15
	else:
		gravity = -45
	direction = direction.normalized()
	direction = direction * speed * delta
	velocity.x = direction.x
	velocity.y += gravity * delta
	velocity.z = direction.z
	velocity = move_and_slide(velocity, Vector3(0,-1,0))
	
	if angle == -10 :
		angle = 350
	if angle == 360:
		angle = 0
	
#	var collisionCount = self.get_slide_count()
#	if collisionCount > 1:
#		var collision = self.get_slide_collision(0)
#		print(collision.collider.name)
#		if collision.collider is RigidBody:
#			collision.collider.apply_impulse(collision.position, -collision.normal)
