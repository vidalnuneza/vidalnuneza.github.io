extends Node3D

func death():
	get_tree().change_scene_to_file("res://death_scene.tscn")
func _rocks_col·lision_detection(area):
	death()

func _on_tree_collition(body):
	death()
