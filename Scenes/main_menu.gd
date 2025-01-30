extends Panel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	#get_tree().change_scene_to_file("res://Scenes/Tutorial.tscn")
	$"../LevelSelect".visible = true

func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_secret_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/secret(tut).tscn")


func _on_tu_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level2.tscn")
