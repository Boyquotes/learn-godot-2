extends Node2D

signal my_signal
#signal my_signal(value, other_value)

# Called when the node enters the scene tree for the first time.
func _ready():
	var err = $Timer.connect("timeout", self, "_on_Timer_timeout")
	print(err)
	emit_signal("my_signal")
	#emit_signal("my_signal", true, 42)


func _on_Timer_timeout():
	# Note: the `$` operator is a shorthand for `get_node()`,
	# so `$Sprite` is equivalent to `get_node("Sprite")`.
	$Sprite.visible = !$Sprite.visible
