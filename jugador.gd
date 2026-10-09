extends CharacterBody2D

var dentro_del_area = false
const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	if dentro_del_area == true:
		velocity.x = 0
	elif Input.is_action_pressed("izq"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("derecha"):
		velocity.x = SPEED
	else:
		velocity.x = 0
		
	if Input.is_action_just_pressed("salto") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	

	move_and_slide()
