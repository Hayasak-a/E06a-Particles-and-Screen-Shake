extends Node2D

onready var Camera = $Camera

func _ready():
	pass

func _physics_process(delta):
	$Camera._ready()
	if Input.is_action_pressed("left"):
		$Camera.add_trauma(0.1)
	if Input.is_action_pressed("right"):
		$Camera.add_trauma(1)
	if Input.is_action_pressed("up"):
		$Camera.add_trauma(.35)
	if Input.is_action_pressed("down"):
		$Camera.add_trauma(.65)
	$Camera._apply_shake()