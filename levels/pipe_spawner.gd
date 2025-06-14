extends Node2D

signal point_awarded

@onready var pipe_scene = preload("res://levels/pipe.tscn")

func _ready():
	spawn_pipe()

func _on_timer_timeout():
	spawn_pipe()

func spawn_pipe():
	var pipe = pipe_scene.instantiate()
	add_child(pipe)
	pipe.connect("point_awarded", func(): point_awarded.emit())
