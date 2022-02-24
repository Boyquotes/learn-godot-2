extends MeshInstance

var t = Transform()

func _ready():
	print(t)
	print(t.basis)
	print(t.origin)
	print("")
	print(transform)
	print(transform.basis)
	print(transform.origin)
	print(transform.rotated(Vector3(0,1,0), 0.6*PI))
	print(transform)
	pass

func _process(delta):
	#transform.origin -= Vector3(0,delta*0.1,0)
	#transform.basis *= Basis(Vector3(1,0,0), delta)
	transform = transform.rotated(Vector3(0,1,0), delta*0.6*PI)
	pass

	#transform.basis = Basis(Vector3(0, 0, 1), MOVE_SPEED * PI*delta) * transform.basis
	#transform.basis = transform.basis.rotated(Vector3(0, 0, 1), MOVE_SPEED * PI*delta)
	#rotate(Vector3(1, 0, 0), PI*delta)
	#rotate_x(PI)
	#rotate_object_local(Vector3(0, 0, 1), MOVE_SPEED * PI*delta)