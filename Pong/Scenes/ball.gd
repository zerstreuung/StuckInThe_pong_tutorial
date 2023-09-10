extends CharacterBody2D

class_name Ball

@export var initial_ball_speed = 20
# 102% faster every time
@export var speed_multipler = 1.02

var ball_speed = initial_ball_speed

func _ready():
	start_ball()
	
func _physics_process(delta):
	var collision = move_and_collide(velocity * ball_speed * delta)
	
	if(collision):
		velocity = velocity.bounce(collision.get_normal()) * speed_multipler
	
	
func start_ball():
	randomize()
	velocity.x = [-1, 1][randi() % 2] * initial_ball_speed
	velocity.y = [-.8, .8][randi() % 2] * initial_ball_speed
