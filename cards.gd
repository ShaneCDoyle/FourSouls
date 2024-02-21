extends Node2D
var selected = false
var mouse_offset

func _ready():
	pass
func _process(delta):
	if selected:
		followMouse()
func followMouse():
	position = get_global_mouse_position() + mouse_offset


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			# Mouse Held
			mouse_offset = position - get_global_mouse_position()
			selected = true
		else:
			#released
			selected = false
