extends Node2D

var max_enemies = 4
var Enemy = load("res://Enemies/Enemy.tscn")

func _ready():
	randomize()

func _physics_process(_delta):
	if get_child_count() < max_enemies:
		if randf() < 0.05:
			var enemies = Enemy.instance()
			enemies.position.y = -100
			enemies.position.x = randi() % 1024
			add_child(enemies)
