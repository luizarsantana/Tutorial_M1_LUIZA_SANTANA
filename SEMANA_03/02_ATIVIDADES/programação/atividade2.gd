extends Node2D

var lista1 = [1,2,3] # lista já preenchida
var insira_lista = [] # lista que receberá informação
var texto1 = ('parabéns') # texto já inserido
var insira_texto # texto que será preenchido


func _on_ListaPreenchida_pressed():
	$lista1.text = "A LISTA É " + String(lista1) # mostra lista preenchida
		

func _on_ListaVazia_pressed():
	insira_lista.append($insira_lista.text) # acrescenta valores à lista vazia
	$lista2.text = "SUA LISTA É " + String(insira_lista) # mostra lista


func _on_TextoPronto_pressed():
	$texto1.text = "O TEXTO É " + String(texto1) # mostra texto pronto
	
	
func _on_TextoInserido_pressed():
	insira_texto = str($insira_texto.text) # converte valor inserido em String
	$texto2.text = "SEU TEXTO É " + String(insira_texto) # mostra texto
