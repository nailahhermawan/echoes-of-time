extends Node2D

var sekar_sudah_masuk = false

func sekar_masuk_gubuk():
    sekar_sudah_masuk = true

func _on_gubuk_trigger_body_entered(body):
    if body.name == "Player" and sekar_sudah_masuk:
        get_tree().change_scene_to_file("res://scene/GubukScene.tscn")