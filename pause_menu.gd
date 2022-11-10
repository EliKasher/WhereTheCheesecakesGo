extends Node2D

onready var pause = $MarginContainer/VBoxContainer/Pause
onready var main_menu = $MarginContainer/VBoxContainer/MainMenu

func _ready():
	pause.connect("pressed", self, "_on_pause_pressed")
	main_menu.connect("pressed", self, "_on_main_menu_pressed")
	visible = false

func _input(event):
	if event.is_action_pressed("pause"):
		visible = !visible
		get_tree().paused = visible

func _on_pause_pressed():
	get_tree().pause = false
	visible = false

func _on_main_menu_pressed():
	get_tree().change_scene("res://scenes/main_menu.tscn")
	get_tree().paused = false

