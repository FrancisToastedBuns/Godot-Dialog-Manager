extends Area2D

@export var speed = 400 # How fast the player will move (pixels/sec).
var screen_size # Size of the game window.

func _ready():
	screen_size = get_viewport_rect().size

func _process(_delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x += 300
	if Input.is_action_pressed("move_left"):
		velocity.x -= 300
	if Input.is_action_pressed("move_down"):
		velocity.y += 300
	if Input.is_action_pressed("move_up"):
		velocity.y -= 300
	position += velocity * _delta
	position = position.clamp(Vector2.ZERO, screen_size)

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		pass
	else:
		pass
