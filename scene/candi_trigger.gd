extends Area2D

var player_near = false

@onready var prompt = $"../Player/InteractPrompt"

func _ready():
	prompt.visible = false
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _process(delta):
	if player_near and Input.is_action_just_pressed("interact"):
		get_tree().change_scene_to_file("res://scene/Candibos.tscn")

func _on_body_entered(body):
	if body.name == "Player":
		player_near = true
		prompt.visible = true

func _on_body_exited(body):
	if body.name == "Player":
		player_near = false
		prompt.visible = false
