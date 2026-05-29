extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#print ("asroide readey")
	var random_force_x = get_rendom_force()
	var random_force_y = get_rendom_force(100.0)
	var asteroid_move := Vector2(random_force_x,random_force_y)
	apply_impulse(asteroid_move)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func get_rendom_force(force_range := 50.0) -> float:
	return randf_range(-force_range,force_range)
