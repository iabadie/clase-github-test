extends KinematicBody2D

var velocity = Vector2(0,0);

func _ready():
	position = $PlayerPosition.global_position;


# Funcion que se ejecuta constantemente
func _physics_process(delta):
	# 1) Detecta la direccion para seleccionar la animación
	var selectedAnimation;
	if Input.is_pressed('up'):
		selectedAnimation = "upAnimation";
		velocity.y += 20
	elif Input.is_pressed('down'):
		selectedAnimation = "downAnimation";
		velocity.y -= 20
	elif Input.is_pressed('left'):
		selectedAnimation = "leftAnimation";
		velocity.x -= 20
	elif Input.is_pressed('right'):
		selectedAnimation = "rightAnimation";
		velocity.x += 20
	else:
		selectedAnimation = null;
	
	$AnimationPlayer.play(selectedAnimation);

	# Sirve para frenar
	if velocity == Vector2(0,0):
		$AnimationPlayer.stop();
	
	# Ejecuta el movimiento del personaje
	move_and_slide(velocity)
	pass

# Detecta si se pareta el boton y ejecuta un golpe.
func hit_detection():
	if Input.is_pressed('space_bar'):

	pass

func hit():
	hit_action()
	pass
