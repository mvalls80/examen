
extends Node2D

func _ready():
	$VisibleOnScreenNotifier2D.screen_exited.connect(_on_screen_exited)

func _on_screen_exited():
	print("El node ha sortit de la pantalla!")
	get_tree().change_scene_to_file("res://parlax/parlax.tscn")
