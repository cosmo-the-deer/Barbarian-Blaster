extends Node3D

@export var projectile: PackedScene
@onready var barrel_middle: MeshInstance3D = $TurretBase/TurretTop/BarrelMiddle


func _on_timer_timeout() -> void:
	var shot = projectile.instantiate()
	add_child(shot)
	shot.global_position = barrel_middle.global_position
	
