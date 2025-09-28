extends CharacterBody2D

@export var speed: int = 200   # Movement speed (pixels per second)

func _physics_process(delta):
	var direction = Vector2.ZERO

	# Input keys
	if Input.is_action_pressed("Right"):
		direction.x += 1
	if Input.is_action_pressed("Left"):
		direction.x -= 1
	if Input.is_action_pressed("Up"):
		direction.y -= 1

	# Normalize (so diagonal isn’t faster)
	direction = direction.normalized()

	# Apply velocity
	velocity = direction * speed
	move_and_slide()
