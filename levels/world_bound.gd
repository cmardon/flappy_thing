extends Area2D

func _on_body_entered(body):
	if body is CharacterBody2D:
		get_tree().call_deferred("reload_current_scene")
