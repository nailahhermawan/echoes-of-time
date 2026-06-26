extends Node2D

const LibraryIntro = preload("res://scripts/dialogue/library_intro.gd")

@onready var player = $Player
@onready var dialog = $Player/DialogUi

func _ready():
	player.lock()

	dialog.dialogue_finished.connect(_dialog_finished)
	dialog.start(LibraryIntro.DIALOG)


func _dialog_finished():

	player.unlock()

	$CanvasLayer/ObjectiveUi.set_objective(
		"Cari pintu menuju gudang."
	)
