extends CanvasLayer

onready var actual_background = $Background

func _ready():
	Game.connect("background_changed", self, "_on_background_changed")
	_on_background_changed(Game.background)
	
func _on_background_changed(value):
	actual_background.texture = value

	
