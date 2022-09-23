extends Node

signal expression_changed
signal soul_changed
var soul = 100 setget set_soul

var expression = preload("res://Assets/characters/nikola/1.png") setget set_expression

func set_soul(value):
	soul = value
	emit_signal("soul_changed", soul)

func set_expression(ex):
	expression = ex
	emit_signal("expression_changed", expression)
