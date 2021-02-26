extends Area2D

var speed = .5
var velocity = Vector2.ZERO

func _physics_process(_delta):
	position += velocity
	velocity.y -= speed
	if position.y < -600:
		queue_free()


func _on_Bullet1_body_entered(body):
	body.die()
	queue_free()
