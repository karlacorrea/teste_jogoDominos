extends KinematicBody2D


var speed = 200
var velocity = Vector2()


func _physics_process(delta):
	velocity = Vector2()  
	
	if Input.is_action_pressed("direita"):
		velocity.x += speed
	if Input.is_action_pressed("esquerda"):
		velocity.x -= speed
	
	
	velocity = move_and_slide(velocity)
