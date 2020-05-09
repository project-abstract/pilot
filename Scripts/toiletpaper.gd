extends RigidBody

var velocity = Vector3()

func _physics_process(delta):
	if Input.is_key_pressed(KEY_E):
		get_node("/root/test/ItemCounter").text += self.name+"\n"
		queue_free()
