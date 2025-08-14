extends Node

var max_pipes : int = 5
var created_pipes : int = 0
var pipes_scene : Resource = preload("res://scenes/pipes.tscn")

@onready var animation_player: AnimationPlayer = $"../EveryPipes/Pipes/AnimationPlayer"
@onready var timer: Timer = $Timer

func _ready() -> void:
	print("game manager ready")
	#var animation = animation_player.get_animation("Loop")
	#var track_index = animation.add_track(Animation.TYPE_VALUE)
	#animation.track_set_path(track_index,".:position:x")
	#animation.track_insert_key(track_index, 0.0, 1200)
	#animation.track_insert_key(track_index, 10.0, -50)
	#animation.length = 10.0
	#animation.loop_mode = Animation.LOOP_LINEAR
	#animation_player.play("Loop")
	create_pipes()
	

func _process(delta: float) -> void:
	pass

func create_pipes():
	if created_pipes < max_pipes:
		print("pipe created")
		var pipes = pipes_scene.instantiate()
		var tween = create_tween()
		pipes.global_position.y = randf_range(160, 480)
		pipes.global_position.x = 1200
		add_child(pipes)
		tween.set_loops()
		tween.tween_property(pipes, "position",Vector2(-50, pipes.global_position.y), 10)
		created_pipes += 1
		timer.start()

func _on_timer_timeout() -> void:
	create_pipes()
