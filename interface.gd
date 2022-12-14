extends Node2D

func show_dialogue(title: String, resource: DialogueResource = null) -> void:
	var dialogue = yield(DialogueManager.get_next_dialogue_line(title, resource), "completed")
	if dialogue != null:
		var balloon = load("res://demo/balloon.tscn").instance()
		balloon.dialogue = dialogue
		get_tree().current_scene.add_child(balloon)
		show_dialogue(yield(balloon, "actioned"), resource)
