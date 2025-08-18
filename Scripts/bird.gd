extends RigidBody2D

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("Jump") :
		apply_impulse(Vector2(0,-400), Vector2(0,0))
