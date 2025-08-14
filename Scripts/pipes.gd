extends AnimatableBody2D

var once : bool = false
var score : bool = false
var points : int = 0

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	print("pipes ready")
	
	#var animation = Animation.new()
	#animation.length = 10.0
	#animation.loop_mode = Animation.LOOP_LINEAR
	#
	#var track_index = animation.add_track(Animation.TYPE_VALUE)
	#animation.track_set_path(track_index,".:global_position:x")
	#animation.track_insert_key(track_index, 0.0, global_position.x)
	#animation.track_insert_key(track_index, 10.0, -50)
	#
	#var animPlayer = AnimationPlayer.new()
	#add_child(animPlayer)
	#animPlayer.add_animation("pipes", animation)
	#
	#animPlayer.play("pipes")
	
func _process(delta: float) -> void:
	if score:
		++points
		print("score = ", points)
		score = false

func _on_point_body_entered(body: Node2D) -> void:
	if body.is_class("RigidBody2D") and !once:
		once = true
		#print("entered +1 point")

func _on_point_body_exited(body: Node2D) -> void:
	if body.is_class("RigidBody2D") and once:
		score = true
		#print("exited +1 point")
