extends CharacterBody3D


const SPEED = 10.0
const JUMP_VELOCITY = 10
@onready var camara = $CamaraPivot/Camera3D
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(delta):
	$".".global_position.x = 0
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	if Input.is_action_pressed("right"):
		velocity.z = -SPEED
	elif Input.is_action_pressed("left"):
		velocity.z = SPEED
	else:
		velocity.z = 0
	
	if global_position.y < -2:
		get_tree().change_scene_to_file("res://death_scene.tscn")
	
	move_and_slide()
