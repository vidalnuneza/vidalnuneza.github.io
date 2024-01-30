extends Label
var points: int


func _on_add_1_point_floor_timeout():
	points = points + 1 
	text = "Points: " + str(points)
