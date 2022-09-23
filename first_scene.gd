extends Node2D

var serious_expression = preload("res://Assets/characters/nikola/1.png")
var sad_expression = preload("res://Assets/characters/nikola/6.png")
var surprised_expression = preload("res://Assets/characters/nikola/8.png")
var happy_expression = preload("res://Assets/characters/nikola/11.png")

func _ready():
	Dialogue._load_dialogues()

func _soul_up():
	Game.soul += 50
	_happy()

func _soul_down():
	Game.soul -= 50
	_sad()
	if(Game.soul <= 0):
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://scenes/game_over.tscn")

func _serious():
	Game.expression = serious_expression

func _happy():
	Game.expression = happy_expression
	
func _sad():
	Game.expression = sad_expression
	
func _surprised():
	Game.expression = surprised_expression

func _bakery_lady_out():
	$BakeryLady/Texture.visible = false

func _factory_guy_out():
	$FactoryGuy/Texture.visible = false

func _factory_guy_in():
	$FactoryGuy/Texture.visible = true
