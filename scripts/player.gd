extends CharacterBody2D

const SPEED = 200.0

var can_move = true

func _physics_process(delta):

	if !can_move:
		return

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

func lock():
	can_move = false

func unlock():
	can_move = true