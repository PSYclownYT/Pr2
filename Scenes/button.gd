extends Button
@onready var wp = $"../.."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _button_pressed():
	get_tree().change_scene_to_file("res://Scenes/template.tscn")
	print(wp.get_meta("Whay"))
