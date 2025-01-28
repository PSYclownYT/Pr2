extends Panel

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
		seconds = fmod(time,60)
		minutes = fmod(time, 3600) /60
		$Minutes.text = "%02d:" % minutes
		$Seconds.text = "%02d." % seconds
		$Msecs.text = "%03d" % msec
	else:
		self.get_parent().visible = true
