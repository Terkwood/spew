extends RigidBody2D

func _ready():
	add_force(
		Vector2(randi() % 250, randi() % 250),
		Vector2(randi() % 3333, randi() % 3333)
	)
