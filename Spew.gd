extends Node2D

const all_things = [
	preload("res://Apple.tscn"),
	preload("res://Avocado.tscn"),
	preload("res://Blackbird.tscn"),
	preload("res://BoarHead.tscn"),
	preload("res://CheeseWedge.tscn"),
	preload("res://Cherry.tscn"),
	preload("res://Diamond.tscn"),
	preload("res://Honey.tscn"),
	preload("res://Pineapple.tscn"),
	preload("res://Pretzel.tscn"),
	preload("res://Princess.tscn"),
	preload("res://PumpkinPie.tscn"),
	preload("res://RoastedChicken.tscn"),
	preload("res://Shovel.tscn"),
	preload("res://Shrimp.tscn"),
	preload("res://SushiRoll.tscn"),
	preload("res://SushiRoll2.tscn"),
	preload("res://Turkey.tscn"),
	preload("res://Watermelon.tscn"),
]

var screen_size = OS.get_screen_size()
var window_size = OS.get_window_size()

var spew = false

func add_someone():
	var r = randi() % all_things.size()
	add(all_things[r])

func add(form):
	var thing = form.instance()
	thing.position = get_viewport().get_mouse_position()
	add_child(thing)

func _ready():
	OS.set_window_position(screen_size*0.5 - window_size*0.5)

func _physics_process(_delta):
	if spew:
		add_someone()


func _input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			add_someone()
			spew = true
		else:
			spew = false
	if event is InputEventScreenTouch:
		if event.pressed:
			add_someone()
			spew = true
		else:
			spew = false
