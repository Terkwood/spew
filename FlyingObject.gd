extends RigidBody2D

var age = 0
const deadline = 6

func rpn():
	return 1 if randi() % 2 == 0 else -1

# Called when the node enters the scene tree for the first time.
func _ready():
	add_force(
		Vector2(randi() % 60 * rpn(), randi() % 60 * rpn()),
		Vector2(randi() % 3333 * rpn(), randi() % 3333 * rpn())
	)

func _physics_process(delta):
	age += delta
	if age > deadline:
		queue_free()