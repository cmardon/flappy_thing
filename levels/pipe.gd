extends Area2D

var move_speed = 128
var max_offset = 128

func _ready():
	var offset = randf_range(-max_offset, max_offset)
	position.y += offset
	
func _process(delta):
	position.x -= move_speed * delta
	
	

func _on_body_entered(body):
	get_tree().call_deferred("reload_current_scene")
