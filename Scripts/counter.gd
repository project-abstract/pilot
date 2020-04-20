extends Label

var totalTime = 30*1000 #in mseconds 1s = 1000ms (computer)
var spentTime = 0

func _process(delta):
	var time = OS.get_ticks_msec()
	var x_pos = 320.0/1024*self.get_viewport_rect().size.x
	var y_pos = 60.0/800*self.get_viewport_rect().size.y
	
	self.set_global_position(Vector2(x_pos, y_pos))
	
	self.text = changeIntoProper(time)
	
	if (totalTime-time <=0):
		pass
		#get_tree().change_scene("res://Main/menu.tscn")
		
func changeIntoProper(time):
	return String((totalTime - time)/1000)
