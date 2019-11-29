extends Node2D

var Princess = preload("res://Princess.tscn")
var Turkey = preload("res://Turkey.tscn")
var Shovel = preload("res://Shovel.tscn")

var all_things = [Princess, Turkey, Shovel]

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
