extends KinematicBody

var speed = 30
var direction = Vector3()

func _ready():
	pass

func _physics_process(delta):
	direction = Vector3(0,0,0)
	if Input.is_key_pressed(KEY_UP):
		direction.y -= 10
	if Input.is_key_pressed(KEY_DOWN):
		direction.y += 10
	if Input.is_key_pressed(KEY_LEFT):
		direction.x += 10
	if Input.is_key_pressed(KEY_RIGHT):
		direction.x -= 10
	direction = direction.normalized()
	move_and_slide(direction, Vector3(0,1,0))
