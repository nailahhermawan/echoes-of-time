extends Control

@onready var dialogue = $NinePatchRect/MarginContainer/DialogueLabel

var dialogues = []
var current = 0

signal dialogue_finished

func start(dialog_array):
	dialogues = dialog_array
	current = 0

	visible = true

	show_dialog()


func show_dialog():
	dialogue.text = dialogues[current]


func next_dialog():

	current += 1

	if current >= dialogues.size():
		visible = false
		dialogue_finished.emit()
		return

	show_dialog()


func _unhandled_input(event):

	if visible and event.is_action_pressed("interact"):
		next_dialog()
