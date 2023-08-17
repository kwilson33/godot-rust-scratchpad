extends CharacterBody2D

@onready var _animation_player = $AnimationPlayer
@export var speed = 100

func _physics_process(_delta):
	get_input()
	move_and_slide()

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

# TODO: transition between left and right
# TODO: add left/right idle frames
	if Input.is_action_pressed("ui_right"):
		_animation_player.play("walk right")
	elif Input.is_action_pressed("ui_left"):
		_animation_player.play("walk left")
	elif Input.is_action_pressed("ui_select"):
		_animation_player.play("idle")
