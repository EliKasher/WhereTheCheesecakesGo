extends Node2D

onready var actual_expression = $Texture

func _ready():
	Game.connect("expression_changed", self, "_on_expression_changed")
	_on_expression_changed(Game.expression)
	
func _on_expression_changed(value):
	actual_expression.texture = value

	
