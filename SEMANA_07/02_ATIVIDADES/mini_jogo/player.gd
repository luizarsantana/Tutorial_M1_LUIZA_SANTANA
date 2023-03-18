extends KinematicBody2D

const cima = Vector2(0,-1)
const gravidade = 20 
const max_queda_vel = 500 # velocidade de queda
const max_vel = 80 # velocidade
const pulo = 500
const acel = 10 # aceleração

var mov = Vector2() # movimento
var direita = true # sentido do personagem
		
func _physics_process(delta):
	
	mov.y += gravidade
	if mov.y > max_queda_vel:
		mov.y = max_queda_vel
	
	if direita == true:
		$Sprite.scale.x = 1
	else:
		$Sprite.scale.x = -1
	
	mov.x = clamp(mov.x,-max_vel,max_vel)
	
	if Input.is_action_pressed("direita"): # tecla 'D'
		mov.x += acel
		direita = true
	elif Input.is_action_pressed("esquerda"): # tecla 'A'
		mov.x += -acel
		direita = false
	else:
		mov.x = lerp(mov.x,0,0.2)
		$AnimationPlayer.play("Idle")
		
	if is_on_floor():
		if Input.is_action_pressed("pular"): # tecla 'espaço'
			mov.y = -pulo
	
	mov = move_and_slide(mov,cima)
