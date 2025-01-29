extends CSGBox3D


func _on_area_3d_area_entered(area):
	var whay = self.get_meta("Scene", "Resource")
	print(whay)
	if area.get_parent() is PlayerCharacter: #get_tree().change_scene_to_packed(whay)
		self.set_meta("Whay", "1")


func _on_nextlevel_pressed() -> void:
	get_tree().change_scene_to_packed(self.get_meta("Scene"))
