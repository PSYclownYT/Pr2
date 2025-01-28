extends CSGCombiner3D


func _on_area_3d_area_entered(area):
	var location = self.global_position
	if area.get_parent() is PlayerCharacter: area.get_parent().setsp(location)
