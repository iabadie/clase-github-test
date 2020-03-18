extends RigidBody2D

const VELOCIDAD = 500;
const VIDA = 6;

var velocity = Vector2(VELOCIDAD,0);
var vida = VIDA;


func _ready():
	position = $PlayerPosition.global_position;


# Funcion que se ejecuta constantemente
func _physics_process(delta):	
	# Ejecuta el movimiento del personaje
	move_and_slide(velocity)
	pass


func receive_hit():
	vida -= 1
	if vida == 0:
		print("Enemigo eliminado.")
		eliminar_instancia()
	pass

func hit():
	hit_player();
	pass