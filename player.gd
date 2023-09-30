extends CharacterBody2D

@export var speed : float = 150
@export var jump : float = 170
@export var doble_jump_velocity : float = -100
@onready var anim = $AnimationPlayer
@onready var sprite = $Sprite2D

var direction = 0.0
var has_doble_jumped : bool = false
const gravity = 13


func _physics_process(_delta):
	direction = Input.get_axis("left", "right")
	velocity.x = direction * speed
	
	if direction != 0:
		anim.play("Walk")
	else:
			anim.play("Idle")
	
	sprite.flip_h = direction < 0 if direction != 0 else sprite.flip_h
	
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y -= jump
		elif not has_doble_jumped:
			velocity.y += doble_jump_velocity
			has_doble_jumped = true
		
		
	if !is_on_floor():
		velocity.y += gravity  
	else:
		has_doble_jumped = false
		
	
	move_and_slide()
