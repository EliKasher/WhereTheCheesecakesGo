extends Node2D

func _ready():
	_load_dialogues()


func _load_dialogues():
	var resource = load("res://intro.tres")
	Interface.show_dialogue(\
	"intro", \
	resource
	)

func _change_background(background):
	Game.background = load(background)

func _soul_up():
	Game.soul += 25

func _soul_down():
	Game.soul -= 25
	if(Game.soul <= 0):
		get_tree().change_scene("res://scenes/game_over.tscn")

func _change_nikola_expression(expression):
	Game.nikola_expression = load(expression)
	
func _soul_bar_out():
	$SoulBar/Soul.visible = false

func _soul_bar_in():
	$SoulBar/Soul.visible = true

func _nikola_out():
	$Characters/Nikola.visible = false
	
func _nikola_in():
	$Characters/Nikola.visible = true

func _mom_out():
	$Characters/Mom.visible = false

func _mom_in():
	$Characters/Mom.visible = true
