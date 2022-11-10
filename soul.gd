extends MarginContainer

onready var soul_bar = $SoulBar

func _ready():
	Game.connect("soul_changed", self, "_on_soul_changed")
	_on_soul_changed(Game.soul)
	
func _on_soul_changed(value):
	soul_bar.value = value

