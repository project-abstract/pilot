extends RigidBody

var picked = false
var collide = false
var velocity = Vector3()

func _process(delta):
	rotate_x(deg2rad(30*delta))
	rotate_y(deg2rad(30*delta))



func _on_toiletpaper_body_entered(body):
	if body is KinematicBody and collide == false:
		collide = true
	else:
		collide = false

func _physics_process(delta):
	if Input.is_key_pressed(KEY_E) and collide == true:
		collide = false
		get_node("/root/test/ItemCounter").text += self.name+"\n"
		queue_free()
