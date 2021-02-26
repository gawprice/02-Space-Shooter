extends KinematicBody2D

var speed = .08
var velocity = Vector2.ZERO

func _physics_process(_delta):
	position += velocity
	velocity.y -= speed
	if position.y < -600:
		queue_free()


func _on_Timer_timeout():
	queue_free()
