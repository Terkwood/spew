extends RigidBody2D

const max_offset = 10
const max_force = 1000

var age = 0
const deadline = 9

func rand_sign():
	return 1 if randi() % 2 == 0 else -1

func r(x):
	return Vector2(randi() % x * rand_sign(), randi() % x * rand_sign())

# Called when the node enters the scene tree for the first time.
func _ready():
	add_force(
		r(max_offset),
		r(max_force)
	)

func _physics_process(delta):
	age += delta
	if age > deadline:
		queue_free()