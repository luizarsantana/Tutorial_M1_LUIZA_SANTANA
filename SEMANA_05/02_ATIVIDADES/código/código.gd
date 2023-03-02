extends Node2D

var teste = false
var valor = 0
var numero = 0 # retirada do acento
var lista = [] # tornar a lista em variável
var nome # nova variável para o LineEdit

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int(LineEdit.text)
	nome = $LineEdit.text 


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i
		lista.append(numero)
	$Label.text = numero


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	while(len(lista)):
		var cont=0
		var i=0
		if(lista[i]%2==1):
			cont+=1
		if(cont!=0):
			nome = nome+"baldo"
		$Label2.text = nome
