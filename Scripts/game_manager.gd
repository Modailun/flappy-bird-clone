extends Node

@onready var animation_player: AnimationPlayer = $"../EveryPipes/Pipes/AnimationPlayer"

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
	for i in range(5):  # Crée 5 objets
		var objet = preload("res://scenes/pipes.tscn").instantiate()
		objet.global_position.y = randf_range(160, 480)
		objet.global_position.x = 1200
		add_child(objet)

func _process(delta: float) -> void:
	pass
