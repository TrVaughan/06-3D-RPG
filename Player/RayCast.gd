extends RayCast

onready var Player_Scene = get_node("/root/Game/Player")

func _physics_process(_delta):
	if is_colliding():
		Player_Scene.Target = get_collider()
		var pos = get_collision_point()
		$Redicule.global_transform.origin = pos 
	elif $Redicule.translation != Vector3(0,0,15):
		$Redicule.translation = Vector3(0,0,15)
		Player_Scene.Target = null 
