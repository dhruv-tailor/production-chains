extends Node

@export var colors: PackedColorArray
@export var hex_grid: Node3D
var active_color: Color = Color.WHITE
var active_elevation: int = 0

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
		var cell = hex_grid.GetCell(result.position)
		EditCell(cell)
	
func select_color(index: int):
	active_color = colors[index]


func _on_option_button_item_selected(index: int) -> void:
	select_color(index)


func _on_check_button_toggled(toggled_on: bool) -> void:
	if toggled_on:
		get_viewport().debug_draw = Viewport.DEBUG_DRAW_WIREFRAME
	else:
		get_viewport().debug_draw = Viewport.DEBUG_DRAW_DISABLED
		
func EditCell(cell: hex_cell):
	cell.color = active_color
	cell.Elevation = active_elevation
	hex_grid.Refresh()


func _on_elevation_slider_value_changed(value: float) -> void:
	active_elevation = int(value)
