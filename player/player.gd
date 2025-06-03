extends CharacterBody2D

@export var gravity = 1000
@export var jump_strength = -600


func _process(delta: float) -> void:
	velocity.y += gravity * delta

	if Input.is_action_just_pressed("jump"):
		velocity.y = jump_strength
		$Sprite2D/AnimationPlayer.play("fly")
	if velocity.y < 0:
		#moving up
		rotation_degrees = lerp(rotation_degrees, -30.0, 0.05)
	else:
		rotation_degrees = lerp(rotation_degrees, 60.0, 0.05)

	move_and_slide()
