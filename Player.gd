extends KinematicBody2D

var velocity = Vector2(0,0);

func _ready():
	position = $PlayerPosition.global_position;
func vida = 3

# Funcion que se ejecuta constantemente
func _physics_process(delta):
	# 1) Detecta la direccion para seleccionar la animación
	var selectedAnimation;
	if Input.is_pressed('up'):
		selectedAnimation = "upAnimation";


	elif Input.is_pressed('down'):
		selectedAnimation = "downAnimation";
		velocity.y -= 0
	elif Input.is_pressed('left'):
		selectedAnimation = "leftAnimation";

		velocity.x -= 250
	elif Input.is_pressed('right'):
		selectedAnimation = "rightAnimation";
		velocity.x += 250
	Costilla-Miguel



	else:
		selectedAnimation = null;
	
	$AnimationPlayer.play(selectedAnimation);

	# Sirve para frenar
	if velocity == Vector2(0,0):
		$AnimationPlayer.stop();
	
	# Ejecuta el movimiento del personaje
	move_and_slide(velocity)
	pass
        
        if vida = 0 muerteanimation  
# Detecta si se pareta el boton y ejecuta un golpe.
func hit_detection():
	if Input.is_pressed('space_bar'):

	pass

func hit():
	hit_action()
	pass
