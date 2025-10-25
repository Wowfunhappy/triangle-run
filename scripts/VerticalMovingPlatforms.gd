extends Spatial

var totaltime = 0;
var initialy = 0;

export var moverange = 5.0;
export var speed = 1.0;
export var dir = 1;

func _ready():
	totaltime = 0;
	initialy = $Part.translation.y;

func _physics_process(delta):
	totaltime += delta;
	translation.y = initialy + sin(totaltime * speed) * moverange * dir;
