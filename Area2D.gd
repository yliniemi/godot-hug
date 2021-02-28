extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
#func _ready():
	#pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _ready():
    set_process(true)

func _process(delta):
    update()

func _draw():
	var limiting_xy = min(get_viewport().size.x, get_viewport().size.y)
	draw_line(get_viewport().size * 0.5, get_viewport().size * 0.5 + GlobalVariables.g *0.0005 *limiting_xy, Color(0, 0, 1), 10)
	pass
