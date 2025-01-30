extends Panel
var time: float = 0.0
var minutes: int = 0
var seconds: int = 0
var msec: int = 0
@onready var Msecs = $Msecs
@onready var Seconds = $Seconds

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("timer started")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time += delta
	minutes = (int(time)/60)%60
	msec = fmod(time,1)*100
	seconds = time
	$Minutes.text = "%02d." % minutes
	Seconds.text = "%02d." % seconds
	Msecs.text = "%03d" % msec
