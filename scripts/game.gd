extends Node2D


@onready var player_2: CharacterBody2D = $player2


var projectile_scense :PackedScene = preload("res://scenes/projectile.tscn")



func _on_player_2_shooter_single() -> void:
	print("from game1") # Replace with function body.  
	var projectile_intance = projectile_scense.instantiate();
	projectile_intance.global_position= player_2.global_position
	projectile_intance.global_position - player_2.muzal.global_position
	
	add_child(projectile_intance)            
