extends Node2D

onready var back = $MarginContainer/VBoxContainer/Back
var credits = [
	{"name": "",
	"author": ""}
]

# Called when the node enters the scene tree for the first time.
func _ready():
	for credit in credits:
		var h_separator = HSeparator.new()
		h_separator.theme_type_variation = "SmallHSeparator"
		credits_container.add_child(h_separator)
		var name_label = _create_label(credit.name)
		var author_label = _create_label(credit.author)
		
	
	back.connect("pressed", self, "_on_back_pressed")
	
func _create_label(text) -> Label:
	var label = Label.new()
	label.align = Label.ALIGN_CENTER
	label.autowrap = true
	return label
	
	
	
func _on_back_pressed():
	get_tree().change_scene("res://scenes/main_menu.tscn")
	

