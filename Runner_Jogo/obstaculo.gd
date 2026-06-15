extends Area2D

@export var velocidade: int = 400

func _ready() -> void:
	pass # Não precisa redefinir a velocidade aqui se já usou @export

func _process(delta: float) -> void:
	# Move o objeto para a esquerda (sem o $)
	position.x -= velocidade * delta
	
	# Se o objeto sair da tela pela esquerda, teleporta para a direita
	if position.x < -1152:
		position.x = 1152
