extends Sprite

func _ready():
	Game.connect("nikola_expression_changed", self, "_on_nikola_expression_changed")
	_on_nikola_expression_changed(Game.nikola_expression)
	
func _on_nikola_expression_changed(value):
	texture = value

	
