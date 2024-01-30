extends Node3D
@export var speed = 20


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	global_position.x += speed * delta
	if global_position.x > 50:
		queue_free()
