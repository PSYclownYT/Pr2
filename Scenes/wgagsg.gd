extends Panel
@onready var player = $"../../../../../PlayerCharacter/PlayerCharacterV2"
var time: float = 0.0
var minutes: int = 0
var seconds: int = 0
var msec: int = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var time: float = 0.0
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	time += delta
	if !self.get_parent().get_parent().get_meta("Whay") == "1":
		
		msec = fmod(time,1)*100
		seconds = time
		$Seconds.text = "%02d." % seconds
		$Msecs.text = "%03d" % msec
	else:
		#if 
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		self.get_parent().visible = true
