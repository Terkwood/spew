extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	add_force(Vector2(0,0),Vector2(10,10))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
