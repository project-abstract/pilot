extends RigidBody

func _ready():
	var location = Vector3()
	randomize()
	location = Vector3(int(rand_range(-80, 80)), 5.206, int(rand_range(-80, 80)))
	self.transform.origin = location


func _on_milk_body_entered(body):
	if body == GridMap:
		var location = Vector3()
		randomize()
		location = Vector3(int(rand_range(-80, 80)), 5.206, int(rand_range(-80, 80)))
		self.transform.origin = location


func _on_bread_body_entered(body):
	if body == GridMap:
		var location = Vector3()
		randomize()
		location = Vector3(int(rand_range(-80, 80)), 5.206, int(rand_range(-80, 80)))
		self.transform.origin = location


func _on_toiletpaper_body_entered(body):
	if body == GridMap:
		var location = Vector3()
		randomize()
		location = Vector3(int(rand_range(-80, 80)), 5.206, int(rand_range(-80, 80)))
		self.transform.origin = location
