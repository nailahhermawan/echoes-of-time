extends Node2D

func _ready():
	print("INTRO JALAN")

	await get_tree().create_timer(2.0).timeout

	print("PINDAH SCENE")

	get_tree().change_scene_to_file(
		"res://scene/MainMenuScreen.tscn"
	)
