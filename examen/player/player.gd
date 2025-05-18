extends CharacterBody2D

var countdown_time := 10.0

var speed := 200

func _physics_process(delta):
	var direction := Vector2.ZERO
	if Input.is_action_pressed("up"):
		direction.y -= 1
	if Input.is_action_pressed("down"):
		direction.y += 1
	if Input.is_action_pressed("left"):
		direction.x -= 1
	if Input.is_action_pressed("right"):
		direction.x += 1

	direction = direction.normalized()
	velocity = direction * speed

	move_and_slide()


func _process(delta):
	countdown_time -= delta


	countdown_time = max(countdown_time, 0)


	$Camera2D/Label.text = "%02d:%02d" % [int(countdown_time) / 60, int(countdown_time) % 60]

	if countdown_time <= 0:
		set_process(false)
		get_tree().quit()
