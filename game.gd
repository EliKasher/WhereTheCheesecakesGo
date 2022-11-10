extends Node

signal nikola_expression_changed
signal soul_changed
signal background_changed

var soul = 100 setget set_soul

var nikola_expression = preload("res://Assets/media/nikola.png") setget set_nikola_expression

var background = preload("res://Assets/media/intro/fotograma0000.png") setget set_background

func set_soul(value):
	soul = value
	emit_signal("soul_changed", soul)

func set_nikola_expression(ex):
	nikola_expression = ex
	emit_signal("nikola_expression_changed", nikola_expression)

func set_background(back):
	background = back
	emit_signal("background_changed", background)
