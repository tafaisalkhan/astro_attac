extends RigidBody2D

var move_froce := 1000.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	#print ("player reader")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	
	if Input.is_action_pressed("move_right"):
		apply_force(Vector2(move_froce,0))
	if Input.is_action_pressed("move_left"):
		apply_force(Vector2(-move_froce,0))
	if Input.is_action_pressed("move_up"):
		apply_force(Vector2(0,-move_froce))
	if Input.is_action_pressed("move_down"):
		apply_force(Vector2(0,move_froce))
