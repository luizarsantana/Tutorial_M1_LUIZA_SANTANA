extends Node2D

var p1
var p2
var q
var resultado


func _on_Button_pressed():
	p1 = float($p1.text)
	p2 = float($p2.text)
	q = float($q.text)
	
	resultado = (p1 + p2) / q
	
	$ColorRect/resposta.text = String(resultado)
