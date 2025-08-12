extends AnimatableBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_point_body_exited(body: Node2D) -> void:
	if body.is_class("RigidBody2D"):
		print("+1 point")
