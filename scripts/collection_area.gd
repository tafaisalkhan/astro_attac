extends Area2D

var colid_sound : AudioStreamPlayer2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	colid_sound = get_node("CollidSound") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	#print("body enter" + body.name)
	if(body.is_in_group("astaroids")):
		colid_sound.play()
		body.queue_free()


func _on_body_exited(body: Node2D) -> void:
	print("body exit" + body.name)
