extends Node2D

func _ready():
	$Timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	# Cargar la escena de partículas
	var particles_scene = load("res://explosio/explosio.tscn")
	var particles_instance = particles_scene.instantiate()

	# Colocar en la posición del Marker2D
	particles_instance.global_position = $Marker2D.global_position

	# Añadirla como hijo del nodo actual
	add_child(particles_instance)
