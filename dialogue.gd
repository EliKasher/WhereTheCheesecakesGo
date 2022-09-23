extends CanvasLayer

func _ready():
	pass

func _load_dialogues():
	var resource = preload("res://demo.tres")
	Interface.show_dialogue(\
	"demo", \
	resource
	)
