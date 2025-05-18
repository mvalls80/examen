extends Node2D

@onready var explosion_sound: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var particles: CPUParticles2D = $CPUParticles2D

func _ready() -> void:
	particles.emitting = true
	explosion_sound.play()
	
