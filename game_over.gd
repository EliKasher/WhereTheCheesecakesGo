extends Node2D

onready var retry = $"%Retry"
onready var quitb = $"%Quit"

func _ready():
	retry.connect("pressed", self, "_on_retry_pressed")
	quitb.connect("pressed", self, "_on_quit_pressed")

func _on_retry_pressed():
	get_tree().change_scene("res://scenes/introduction.tscn")
	
func _on_quit_pressed():
	get_tree().quit()

