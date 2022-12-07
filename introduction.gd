extends Node2D

func _ready():
	_load_dialogues()


func _load_dialogues():
	var resource = load("res://intro.tres")
	DialogueManager.show_example_dialogue_balloon("intro", resource)

func _change_background(background):
	Game.background = load(background)

func _soul_up():
	var random = RandomNumberGenerator.new()
	var soulNumber = random.randi_range(15,25)
	Game.soul += soulNumber
	# if game soul >= 100, game.soul == 100 ??

func _soul_down():
	var random = RandomNumberGenerator.new()
	var soulNumber = random.randi_range(15,25)
	Game.soul -= soulNumber
	if(Game.soul <= 0):
		get_tree().change_scene("res://scenes/game_over.tscn")

func _ending():
	get_tree().change_scene("res://scenes/game_over.tscn")

func _change_nikola_expression(expression):
	Game.nikola_expression = load(expression)
	
func _soul_bar_out():
	$SoulBar/Soul.visible = false

func _soul_bar_in():
	$SoulBar/Soul.visible = true

func _nikola_out():
	$"%Nikola".visible = false
	
func _nikola_in():
	$"%Nikola".visible = true

func _mom_out():
	$"%Mom".visible = false

func _mom_in():
	$"%Mom".visible = true
	
func _cat_in():
	$"%Cat".visible = true
	
func _cat_out():
	$"%Cat".visible = false

func _boss_in():
	$"%Boss".visible = true

func _boss_out():
	$"%Boss".visible = false

func _secretary_in():
	$"%Secretary".visible = true

func _secretary_out():
	$"%Secretary".visible = false

func _ddk_in():
	$"%Ddk".visible = true

func _ddk_out():
	$"%Ddk".visible = false

func _manager_in():
	$"%Manager".visible = true

func _manager_out():
	$"%Manager".visible = false

func _mayor_in():
	$"%Mayor".visible = true

func _mayor_out():
	$"%Mayor".visible = false

func _kuchen_employee_in():
	$"%Kuchen Employee".visible = true

func _kuchen_employee_out():
	$"%Kuchen Employee".visible = false
	
func _kuchen_boss_in():
	$"%Kuchen Boss".visible = true

func _kuchen_boss_out():
	$"%Kuchen Boss".visible = false

func _hippie_in():
	$"%Hippie".visible = true

func _hippie_out():
	$"%Hippie".visible = false

func _gotic_in():
	$"%Gotic".visible = true

func _gotic_out():
	$"%Gotic".visible = false

func _aliens_in():
	$"%Aliens".visible = true

func _aliens_out():
	$"%Aliens".visible = false

func _scientist_in():
	$"%Scientist".visible = true

func _scientist_out():
	$"%Scientist".visible = false
