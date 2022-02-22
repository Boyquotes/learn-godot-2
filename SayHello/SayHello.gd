extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var err = get_node("Button").connect("pressed", self, "_on_Button_pressed")
	print(err)
	add_to_group("enemies")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("Label2").text = str(delta)


func _on_Button_pressed():
	get_node("Label").text = "HELLO!"
	#get_node("Button").text = "HELLO!"
	#print("Hello!")
