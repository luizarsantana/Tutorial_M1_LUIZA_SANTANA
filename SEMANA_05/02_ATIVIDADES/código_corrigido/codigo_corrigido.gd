extends Node2D

# váriavel teste removida
# váriavel valor deletada
var numero = 0 # nome da variável sem o acento
var lista = [] # tranformada em váriavel
var nome # criação da váriavel 
var i # criação da váriavel

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit2.text) # "$" adicionado e acento de "número" retirado
	nome = str($LineEdit.text) # tranformação do LineEdit em string


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i # mudança para inicial minuscula
		lista.append(numero) # mudança para inicial minuscula
	$Label3.text = str(lista)# transformação da lista em string


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	i = 0 # mudança de posição fora do while
	while i <= (len(lista)-1): # condição "while" alterada
		var cont=0 # criação da váriavel
		if(lista[i]%2==1):
			cont+=1
		i+=1 # loop
		if(cont!=0):
			$Label4.text = String(nome) + " baldo" # mudança para nome em String e redução de uma linha
		
