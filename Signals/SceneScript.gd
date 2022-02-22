extends Node2D


signal gameOver
onready var PlayerNode = get_node('Player') 


func _ready():
	prints("Health", PlayerNode)
	PlayerNode.connect("healthChanged", self, "doSomething")


func doSomething(playerHealth):
	print('We changed value of health to: ', playerHealth)
	PlayerNode.disconnect("healthChanged", self, "doSomething")
	emit_signal("gameOver")
