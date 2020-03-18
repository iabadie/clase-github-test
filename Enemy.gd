extends RigidBody2D

var velocity = Vector2(0,0);
var animation = null;

func _ready():
	position = $PlayerPosition.global_position;


# Funcion que se ejecuta constantemente
func _physics_process(delta):	
	# Ejecuta el movimiento del personaje
	move_and_slide(velocity)
	pass


func receive_hit():
	pass

func hit():
	hit_player();
	pass