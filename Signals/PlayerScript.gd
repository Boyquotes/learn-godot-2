extends Sprite


signal healthChanged
var check: int = 0
var playerHealth: int = 100


func _process(_delta):
	if check < 1:
		check = check + 1
		changeHealth(-100)


func changeHealth(value):
	playerHealth = playerHealth + value
	emit_signal("healthChanged", playerHealth)
	
