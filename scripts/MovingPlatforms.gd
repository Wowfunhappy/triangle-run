extends Spatial

var totaltime = 0;
var initialx = 0;

export var moverange = 100;
export var speed = 1.0;
export var dir = 1;

func _ready():
	totaltime = 0;
	initialx = translation.x;

func _physics_process(delta):
	totaltime += delta;
	translation.x = initialx + sin(totaltime * speed) * moverange * dir;
