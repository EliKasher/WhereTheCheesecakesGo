extends Node2D

var happy_expression = preload("res://Assets/media/nikola.png")
var sad_expression = preload("res://Assets/media/nikola_sad.png")
var surprised_expression = preload("res://Assets/media/nikola_surprised.png")


func _ready():
	_load_dialogues()


func _load_dialogues():
	var resource = load("res://demo.tres")
	Interface.show_dialogue(\
	"demo", \
	resource
	)

func _soul_up():
	Game.soul += 50
	_happy()

func _soul_down():
	Game.soul -= 50
	_sad()
	if(Game.soul <= 0):
		get_tree().change_scene("res://scenes/game_over.tscn")

func _happy():
	Game.expression = happy_expression
	
func _sad():
	Game.expression = sad_expression
	
func _surprised():
	Game.expression = surprised_expression

func _bakery_lady_out():
	$BakeryLady/Texture.visible = false

func _factory_guy_out():
	$FactoryGuy.visible = false

func _factory_guy_in():
	$FactoryGuy.visible = true
