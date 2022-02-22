extends Node2D


onready var HealthNode = get_owner()


func _ready():
	prints("GameOver", HealthNode)
	HealthNode.connect("gameOver", self, "doSomething")


func doSomething():
	print('Game is Over Do Something ')
