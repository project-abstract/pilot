extends TextureButton


func _process(delta):
	var x_pos = 740.0/1024*self.get_viewport_rect().size.x
	var y_pos = 444.0/800*self.get_viewport_rect().size.y
	self.set_global_position(Vector2(x_pos, y_pos))
