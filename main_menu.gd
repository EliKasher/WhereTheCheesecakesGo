extends Node2D

onready var play = $"%Play" 
onready var credits = $"%Credits"
onready var exit = $"%Exit"

func _ready():
	exit.connect("pressed", self, "_on_exit_pressed")
	credits.connect("pressed", self, "_on_credits_pressed")
	play.connect("pressed", self, "_on_play_pressed")
	

func _on_play_pressed():
	get_tree().change_scene("res://scenes/introduction.tscn")
	
func _on_exit_pressed():
	get_tree().quit()
	
func _on_credits_pressed():
	get_tree().change_scene("res://scenes/credits.tscn")

