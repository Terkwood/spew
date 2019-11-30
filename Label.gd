extends Label

const deadline = 6
var age = 0

func _physics_process(delta):
	age += delta
	if age > deadline:
		queue_free()
