extends Node2D

var lista1 = [1,2,3] 
var insira_lista = []
var texto1 = ('olá mundo')
var insira_texto


func _on_ListaPreenchida_pressed():
	$lista1.text = "A LISTA É " + String(lista1)
	

func _on_ListaVazia_pressed():
	insira_lista.append($insira_lista.text)
	$lista2.text = "SUA LISTA É " + String(insira_lista)


func _on_TextoPronto_pressed():
	$texto1.text = "O TEXTO É " + String(texto1)
	
	
func _on_TextoInserido_pressed():
	insira_texto = str($insira_texto.text)
	$texto2.text = "SEU TEXTO É " + String(insira_texto)
