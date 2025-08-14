extends AnimatableBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	print("pipes ready")
	
	var animation = animation_player.get_animation("Loop")
	var track_index = animation.add_track(Animation.TYPE_VALUE)
	animation.track_set_path(track_index,".:global_position:x")
	animation.track_insert_key(track_index, 0.0, 1200)
	animation.track_insert_key(track_index, 10.0, -50)
	animation.length = 10.0
	animation.loop_mode = Animation.LOOP_LINEAR
	animation_player.play("Loop")

func _on_point_body_exited(body: Node2D) -> void:
	if body.is_class("RigidBody2D"):
		print("+1 point")
