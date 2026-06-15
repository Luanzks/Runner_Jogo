extends Node2D

const OBSTACULO_CENA = preload("res://obstaculo.tscn")

var temporizador: float = 0.0

func _process(delta: float) -> void:
	temporizador += delta
	
	if temporizador >= 1:
		temporizador = 0.0
		
		var novo_obstaculo = OBSTACULO_CENA.instantiate()
		
		novo_obstaculo.position.x = 1200
		novo_obstaculo.position.y = randi_range(330, 530)
		
		add_child(novo_obstaculo)
