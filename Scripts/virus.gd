extends Spatial


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
export(int) var rotate_speed = 50
 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotate_x(deg2rad(rotate_speed*delta))
	rotate_y(deg2rad(rotate_speed*delta))
	rotate_z(deg2rad(rotate_speed*delta))
	
