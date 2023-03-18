extends Node2D

func _ready():
	$mensagem_final.hide()

	$fundo.hide()
	$player.hide()
	$Button.hide()
	$TileMap.hide()
	$fundo_inicial.show()


func _on_iniciar_pressed():
	$iniciar.hide()
	$iniciar.hide()
	$fundo.show()
	$player.show()
	$Button.show()
	$TileMap.show()
	$fundo_inicial.hide()


func _on_Button_pressed():
	$mensagem_final.show()
