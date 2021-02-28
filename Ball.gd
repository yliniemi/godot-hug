extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# var rad = 10
export (Vector2) var wanted_position
export (float) var radius
export (Color) var color


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("CollisionShape2D").scale = Vector2(radius / get_node("CollisionShape2D").shape.radius, radius / get_node("CollisionShape2D").shape.radius)
	mass = radius * radius
	weight = mass * 9.8
	
	GlobalVariables.MassSum += mass
	
	# set_process(true)
	
	pass # Replace with function body.


func _draw():
	var cen = Vector2(0, 0)
	draw_circle (cen, radius, color)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_mouse_button_pressed(1):
		applied_force = (GlobalVariables.g + (wanted_position - position)*3 - linear_velocity) * weight * 0.1
	else:
		applied_force = GlobalVariables.g * weight * 0.1
	pass
	
#	if GlobalVariables.MassTooMuch == true:
#		get_node("CollisionShape2D").scale.x = get_node("CollisionShape2D").scale.x * 0.95
#		get_node("CollisionShape2D").scale.y = get_node("CollisionShape2D").scale.y * 0.95
#		radius = radius * 0.95
#		mass = radius * radius
#		weight = mass * 9.8
#		update()
#
#	pass

