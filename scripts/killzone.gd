extends Area2D

@onready var kill_timer : Timer = $Killtimer


func _on_body_entered(body):
	print("You Died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	kill_timer.start()
	

func _on_killtimer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
