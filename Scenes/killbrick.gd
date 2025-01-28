extends CSGBox3D

#@onready var cpm = get_node()

func _on_area_3d_area_entered(area):
	if area.get_parent() is PlayerCharacter: area.get_parent().kill()
