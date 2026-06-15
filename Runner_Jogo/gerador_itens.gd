extends Node2D

const ITEM_CENA = preload("res://item.tscn")

var temporizador: float = 0.0

func _process(delta: float) -> void:
	temporizador += delta
	
	if temporizador >= 1:
		temporizador = 0.0
		
		var novo_item = ITEM_CENA.instantiate()
		
		novo_item.position.x = 1200
		novo_item.position.y = randi_range(330, 530)
		
		add_child(novo_item)
