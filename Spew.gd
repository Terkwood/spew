extends Node2D

var Princess = preload("res://Princess.tscn")
var Turkey = preload("res://Turkey.tscn")

var screen_size = OS.get_screen_size()
var window_size = OS.get_window_size()

var spew = false

func add_someone():
	if randi() % 2 == 0:
		add_princess()
	else:
		add_turkey()

func add_princess():
	var new_princess = Princess.instance()
	new_princess.position = get_viewport().get_mouse_position()
	add_child(new_princess)

func add_turkey():
	var new_turkey = Turkey.instance()
	new_turkey.position = get_viewport().get_mouse_position()
	add_child(new_turkey)

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
