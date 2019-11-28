extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	add_force(
		Vector2(randi() % 250, randi() % 250),
		Vector2(randi() % 3333, randi() % 3333)
	)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
