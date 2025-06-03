extends Area2D

signal point_awarded

var move_speed = 192
var max_offset = 96

func _ready():
	var offset = randf_range(-max_offset, max_offset)
	position.y += offset

func _process(delta):
	position.x -= move_speed * delta

func _on_body_entered(body):
	if body is CharacterBody2D:
		get_tree().call_deferred("reload_current_scene")

func _on_point_zone_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		point_awarded.emit()
