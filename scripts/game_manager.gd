extends Node

@onready var game_manager = %GameManager

var score : int = 0

func add_points(points : int) -> void:
	score += points #score = score + 1
	print(score)
