extends Label

var totalTime = 25*1000 #in mseconds 1s = 1000ms (computer)
var elapsed = 0

func _process(delta):
	elapsed += delta*1000
	self.text = String((totalTime - int(elapsed))/1000)
		
	
	if (totalTime-int(elapsed) <=1):
		get_tree().change_scene("res://Main/GameOver.tscn")
