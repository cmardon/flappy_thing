extends Node2D

@onready var pipe_spawner: Node2D = $pipe_spawner
@onready var score_value: Label = %score_value
@onready var best_score_value: Label = %best_score_value

var score: int

func _ready() -> void:
	pipe_spawner.connect("point_awarded", add_point)
	display_score()

func add_point() -> void:
	score += 1
	if score > Global.best_score:
		Global.best_score = score
	display_score()

func display_score():
	score_value.text = str(score)
	best_score_value.text = str(Global.best_score)
