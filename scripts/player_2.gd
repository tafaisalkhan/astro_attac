extends CharacterBody2D


var speed := 500


func _physics_process(delta: float) -> void:
	print("player 2")
	
	var horizatal_dir := Input.get_axis("move_left","move_right")
	var vertical_dir := Input.get_axis("move_up", "move_down")
	
	var direction =Vector2(horizatal_dir,vertical_dir).normalized()
	
	velocity = speed  * direction
	move_and_slide()
