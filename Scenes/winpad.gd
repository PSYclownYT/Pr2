extends CSGBox3D
@export var scene: Resource
@onready var panel = $CanvasLayer/Panel
@onready var Msecs = $CanvasLayer/Panel/Msecs
@onready var Seconds = $CanvasLayer/Panel/Seconds
var time: float = 0.0
var minutes: int = 0
var seconds: int = 0
var msec: int = 0
var stopped = false
func _process(delta: float) -> void:
	time += delta
	

func _on_area_3d_area_entered(area):
	var times = time
	var msecd = fmod(times,1)*100
	var secondsd = times
	$CanvasLayer/Panel/Minutes.text = str((int(times)/60)%60) + ":"
	$CanvasLayer/Panel/Seconds.text = "%02d." % secondsd
	$CanvasLayer/Panel/Msecs.text = "%03d" % msecd
	var whay = self.get_meta("Scene", "Resource")
	print(whay)
	if area.get_parent() is PlayerCharacter: #get_tree().change_scene_to_packed(whay)
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		$CanvasLayer.visible = true
		if time < area.get_parent().tb:
			$CanvasLayer/Panel/Minutes.add_theme_color_override("font_color","Gold")
			Msecs.add_theme_color_override("font_color","Gold")
			Seconds.add_theme_color_override("font_color", "Gold")
		elif time < area.get_parent().tg:
			if !Msecs.has_theme_color_override("font_color"):
				$CanvasLayer/Panel/Minutes.add_theme_color_override("font_color",Color.GRAY)
				Msecs.add_theme_color_override("font_color",Color.GRAY)
				Seconds.add_theme_color_override("font_color", Color.GRAY)
		elif time < area.get_parent().tp:
			if !Msecs.has_theme_color_override("font_color"):
				$CanvasLayer/Panel/Minutes.add_theme_color_override("font_color",Color.SADDLE_BROWN)
				Msecs.add_theme_color_override("font_color", Color.SADDLE_BROWN)
				Seconds.add_theme_color_override("font_color", Color.SADDLE_BROWN)


func _on_nextlevel_pressed() -> void:
	get_tree().change_scene_to_packed(scene)
