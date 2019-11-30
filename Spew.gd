extends Node2D

const Apple = preload("res://Apple.tscn")
const Avocado = preload("res://Avocado.tscn")
const BoarHead = preload("res://BoarHead.tscn")
const CheeseWedge = preload("res://CheeseWedge.tscn")
const Cherry = preload("res://Cherry.tscn")
const Diamond = preload("res://Diamond.tscn")
const Honey = preload("res://Honey.tscn")
const Pineapple = preload("res://Pineapple.tscn")
const Pretzel = preload("res://Pretzel.tscn")
const Princess = preload("res://Princess.tscn")
const PumpkinPie = preload("res://PumpkinPie.tscn")
const RoastedChicken = preload("res://RoastedChicken.tscn")
const Shovel = preload("res://Shovel.tscn")
const Shrimp = preload("res://Shrimp.tscn")
const SushiRoll = preload("res://SushiRoll.tscn")
const SushiRoll2 = preload("res://SushiRoll2.tscn")
const Turkey = preload("res://Turkey.tscn")
const Watermelon = preload("res://Watermelon.tscn")



const all_things = [
	Apple,
	Avocado,
	Cherry,
	Honey,
	Princess,
	Turkey, 
	Shovel, 
	Diamond, 
	BoarHead, 
	SushiRoll,
	SushiRoll2,
	Pretzel,
	PumpkinPie,
	Watermelon,
	RoastedChicken,
	CheeseWedge,
	Shrimp
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
