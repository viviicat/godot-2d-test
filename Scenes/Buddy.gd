extends KinematicBody2D

export var speed = 100.0

func _ready():
	pass

func _physics_process(_delta):
	var offset = speed
	var delta_move = Vector2()

	if Input.is_action_pressed("move_right"):
		delta_move.x = offset;
	elif Input.is_action_pressed("move_left"):
		delta_move.x = -offset;
		
		
	if Input.is_action_pressed("move_up"):
		delta_move.y = -offset;
	elif Input.is_action_pressed("move_down"):
		delta_move.y = offset

	move_and_slide(delta_move)
