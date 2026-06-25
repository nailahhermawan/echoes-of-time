extends CharacterBody2D

const SPEED = 200.0
const GRAVITY = 900.0

func _physics_process(delta):

	var direction = Input.get_axis(
		"ui_left",
		"ui_right"
	)

	velocity.x = direction * SPEED

	if direction > 0:
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("XenaNgadepKanan")

	elif direction < 0:
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("XenaNgadepKanan")

	else:
		$AnimatedSprite2D.play("XenaNgadepKanan_1")

	move_and_slide()
