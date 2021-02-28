extends Node

export (PackedScene) var Ball

var screen_x = 0
var screen_y = 0
var limiting_xy = 0

func _ready():
	VisualServer.set_default_clear_color(Color (0, 0, 0))
	
	get_tree().get_root().connect("size_changed", self, "WindowSizeChanged")
	WindowSizeChanged()
	
	screen_x = get_viewport().size.x
	screen_y = get_viewport().size.y
	limiting_xy = min(screen_x, screen_y)
	
#	for n in range(11):
#		var new_ball = Ball.instance()
#		new_ball.radius = limiting_xy * 0.04
#		new_ball.position = Vector2(screen_x * randf(), screen_y * randf())
#		new_ball.wanted_position = Vector2(screen_x*0.5 + cos(TAU * (0.5 + n*0.1*0.5)) *limiting_xy*0.3, screen_y*0.5 - sin(TAU * (0.5 + n*0.1*0.5)) *limiting_xy*0.3)
#		#new_ball.position = new_ball.wanted_position
#		#new_ball.wanted_position = new_ball.position
#		add_child(new_ball)
#		pass
	
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	draw_hug()
	
	pass

func draw_pixel(x, y, color, grid):
	
	var new_ball = Ball.instance()
	new_ball.radius = limiting_xy * 0.02 * (1+randf())*0.5
	new_ball.position = Vector2(screen_x * randf(), screen_y * randf())
	new_ball.wanted_position = Vector2(screen_x*0.5 + (x-grid*0.5)/grid*limiting_xy*2, screen_y*0.5 + (y-grid*0.5)/grid*limiting_xy*2)
	new_ball.color = color
	add_child(new_ball)
	
	pass
	
func draw_hug():
	var grid = 17
	var color = Color(1,0.6,0.6)
	draw_pixel(2, 6, color, grid)
	draw_pixel(2, 7, color, grid)
	draw_pixel(2, 8, color, grid)
	draw_pixel(2, 9, color, grid)
	draw_pixel(2, 10, color, grid)
	draw_pixel(3, 8, color, grid)
	draw_pixel(4, 8, color, grid)
	draw_pixel(5, 6, color, grid)
	draw_pixel(5, 7, color, grid)
	draw_pixel(5, 8, color, grid)
	draw_pixel(5, 9, color, grid)
	draw_pixel(5, 10, color, grid)
	color = Color(1,0.5,0.5)
	draw_pixel(7, 6, color, grid)
	draw_pixel(7, 7, color, grid)
	draw_pixel(7, 8, color, grid)
	draw_pixel(7, 9, color, grid)
	draw_pixel(8, 10, color, grid)
	draw_pixel(9, 10, color, grid)
	draw_pixel(10, 6, color, grid)
	draw_pixel(10, 7, color, grid)
	draw_pixel(10, 8, color, grid)
	draw_pixel(10, 9, color, grid)
	color = Color(1,0.4,0.4)
	draw_pixel(12, 7, color, grid)
	draw_pixel(12, 8, color, grid)
	draw_pixel(12, 9, color, grid)
	draw_pixel(13, 6, color, grid)
	draw_pixel(13, 10, color, grid)
	draw_pixel(14, 6, color, grid)
	draw_pixel(14, 8, color, grid)
	draw_pixel(14, 10, color, grid)
	draw_pixel(15, 8, color, grid)
	draw_pixel(15, 9, color, grid)
	pass

	
	
#func _input(event):
#	# if event.is_action_pressed("click"):
#	if Input.is_mouse_button_pressed(1):
#		var new_ball = Ball.instance()
#		new_ball.position = get_viewport().get_mouse_position()
#		add_child(new_ball)
#		pass
#	elif event.is_action_pressed("rightclick"):
#		GlobalVariables.g = get_viewport().get_mouse_position() - get_viewport().size * 0.5
#		pass
#	pass




	
func WindowSizeChanged():
	var new_size_x = get_viewport().size.x
	var new_size_y = get_viewport().size.y
	get_node("StaticBody2D").position = Vector2(new_size_x, 0)
	get_node("StaticBody2D2").position = Vector2(0, new_size_y)
	get_node("StaticBody2D4").position = Vector2(new_size_x, new_size_y)
	pass

#func _process(delta):
#	GlobalVariables.g.x = Input.get_gravity().x * 100
#	GlobalVariables.g.y = Input.get_gravity().y * -100
#	GlobalVariables.MassTooMuch = false
#	if GlobalVariables.MassSum > (get_viewport().size.x * get_viewport().size.y * 0.1):
#		GlobalVariables.MassTooMuch = true
#		GlobalVariables.ScalingFactor = GlobalVariables.ScalingFactor * 0.95
#		GlobalVariables.MassSum = GlobalVariables.MassSum * 0.95
#		pass
#	pass

func _input(event):
	if event.is_action_pressed("rightclick"):
		GlobalVariables.g = get_viewport().get_mouse_position() - get_viewport().size * 0.5
		pass
	pass

func _process(delta):
	GlobalVariables.g = get_viewport().get_mouse_position() - get_viewport().size * 0.5
	
	pass
