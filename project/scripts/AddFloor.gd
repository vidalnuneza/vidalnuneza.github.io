extends Node3D
@export var _floor: Array[PackedScene] = []

func _on_add_floor_timeout():
	var select = _floor.pick_random()
	var instance = select.instantiate()
	instance.global_position = Vector3(-150,0,0)
	add_child(instance)
