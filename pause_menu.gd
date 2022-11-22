extends Control

onready var resume = $"%Resume"
onready var main_menu = $"%MainMenu"

func _ready():
	resume.connect("pressed", self, "_on_resume_pressed")
	main_menu.connect("pressed", self, "_on_main_menu_pressed")
	visible = false

func _input(event):
	if event.is_action_pressed("pause"):
		visible = !visible
		get_tree().paused = visible

func _on_resume_pressed():
	get_tree().paused = false
	visible = false

func _on_main_menu_pressed():
	get_tree().change_scene("res://scenes/main_menu.tscn")
	get_tree().paused = false

