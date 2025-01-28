extends CSGBox3D

#value variables
@export_group("value variables")
@export var jumpBoostValue : float


func _on_area_3d_area_entered(area):
	var whay = self.get_meta("Scene", "String")
	print(whay)
	if area.get_parent() is PlayerCharacter: #get_tree().change_scene_to_packed(whay)
		self.set_meta("Whay", "1")
