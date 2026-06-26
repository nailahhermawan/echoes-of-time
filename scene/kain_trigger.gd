extends Area2D

var player_near = false

@onready var prompt = $"../Player/InteractPrompt"
@onready var fade = $"../CanvasLayer/FadeRect"

func _ready():
	prompt.visible = false
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _process(delta):
	if player_near and Input.is_action_just_pressed("interact"):
		start_transition()

func start_transition():
	var tween = create_tween()

	tween.tween_property(
		fade,
		"color:a",
		1.0,
		1.0
	)

	await tween.finished

	get_tree().change_scene_to_file(
		"res://scene/GerbangMajapahit.tscn"
	)

func _on_body_entered(body):
	if body.name == "Player":
		player_near = true
		prompt.visible = true

func _on_body_exited(body):
	if body.name == "Player":
		player_near = false
		prompt.visible = false
