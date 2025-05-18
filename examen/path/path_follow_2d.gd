extends PathFollow2D

@export var speed: float = 100.0

func _process(delta):
	# Avanza a lo largo del path
	progress += speed * delta
