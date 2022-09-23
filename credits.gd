extends Node2D

onready var back = $MarginContainer/VBoxContainer/Back

# Called when the node enters the scene tree for the first time.
func _ready():
	back.connect("pressed", self, "_on_back_pressed")
	
func _on_back_pressed():
	get_tree().change_scene("res://scenes/main_menu.tscn")
	

