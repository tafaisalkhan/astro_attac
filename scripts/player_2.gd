extends CharacterBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var muzal: Marker2D = $muzal

signal shooter_single

@export var speed: = 15
#var speed := 500

func shoot() -> void:
	print("emit           ")
	shooter_single.emit()

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("fire"):
		print("shot")
		shoot()

func _physics_process(delta: float) -> void:
	#print("player 2")
	
	var horizatal_dir := Input.get_axis("move_left","move_right")
	var vertical_dir := Input.get_axis("move_up", "move_down")
	
	var direction =Vector2(horizatal_dir,vertical_dir).normalized()
	
	velocity = speed  * direction
	move_and_slide()
	
	if vertical_dir > 0:
		animation_player.play("up")
	elif vertical_dir < 0:
		animation_player.play("down")
	else:
		animation_player.play("default")	
