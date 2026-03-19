extends Node

@export var colors: PackedColorArray
@export var hex_grid: Node3D
var active_color: Color = Color.WHITE

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		handle_input()

func handle_input() -> void:
	var camera = get_viewport().get_camera_3d()
	var mouse_pos = get_viewport().get_mouse_position()
	var from = camera.project_ray_origin(mouse_pos)
	var to = from + camera.project_ray_normal(mouse_pos) * 1000
	var space_state = hex_grid.get_world_3d().direct_space_state
	var query = PhysicsRayQueryParameters3D.create(from,to)
	var result = space_state.intersect_ray(query)
	
	if result:
		hex_grid.color_cell(result.position,active_color)
	
func select_color(index: int):
	active_color = colors[index]


func _on_option_button_item_selected(index: int) -> void:
	select_color(index)
