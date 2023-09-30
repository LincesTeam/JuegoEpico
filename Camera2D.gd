extends Camera2D

func _ready():
	top_level = true
	global_position.y = 50
func _process(_delta):
	global_position.x = get_parent().global_position.x
	
