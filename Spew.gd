extends Node2D

var Princess = preload("res://Princess.tscn")

var screen_size = OS.get_screen_size()
var window_size = OS.get_window_size()


func add_princess():
	var new_princess = Princess.instance()
	new_princess.position = get_viewport().get_mouse_position()
	add_child(new_princess)

func _ready():
	OS.set_window_position(screen_size*0.5 - window_size*0.5)

func _input(event):
	if event is InputEventMouseButton:
		add_princess()
	if event is InputEventScreenTouch:
		if event.pressed:
			add_princess()
