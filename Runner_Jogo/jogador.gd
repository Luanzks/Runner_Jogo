extends CharacterBody2D


var velocidade_pulo = -600

func _physics_process(delta: float) -> void:
	# velocity já é uma propriedade do CharacterBody2D
	velocity += get_gravity()*delta # adiciona gravidade aos poucos

	if is_on_floor():
		$imagem.play("default")
		if Input.is_action_pressed("ui_select"):
			velocity.y = velocidade_pulo 
	else: 
		$imagem.play("pular") 
	move_and_slide()
func _on_body_entered(body: Node2D) -> void:
	body.vidas -= 1
	queue_free()
