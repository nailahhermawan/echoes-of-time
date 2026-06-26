extends Node2D

@onready var fade = $CanvasLayer/FadeRect

func _ready():
	fade.color.a = 1.0

	var tween = create_tween()

	tween.tween_property(
		fade,
		"color:a",
		0.0,
		1.0
	)

	await tween.finished

	await get_tree().create_timer(1.0).timeout

	get_tree().change_scene_to_file(
		"res://scene/MainMenuScreen.tscn"
	)