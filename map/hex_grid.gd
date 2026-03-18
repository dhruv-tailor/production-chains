extends Node3D

@export var width: int = 6
@export var height: int = 6

@export var hexCell = preload(Constants.SCENE_PATHS.hex_cell)
@export var cell_label: PackedScene = preload(Constants.SCENE_PATHS.cell_label)
@onready var grid_labels: Node3D = %"Cell Labels"

@onready var hex_mesh: MeshInstance3D = %HexMesh

@export var default_color: Color = Color.WHITE
@export var touched_color: Color = Color.MAGENTA

var cells: Array = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for z in range(height):
		for x in range(width):
			CreateCell(x, z)
	hex_mesh.Triangulate(cells)

func CreateCell(x: int,z: int):
	var cell_position: Vector3 = Vector3(
		(x+ z * 0.5 - z / 2) * (HexMetrics.INNER_RADIUS * 2), # you want the  / 2 to be an int
		0,
		z * (HexMetrics.OUTER_RADIUS * 1.5)
	)
	var cell = hexCell.instantiate() as Node3D
	cell.position = cell_position
	cell.coordinates = HexCoordinates.from_offset_coordinates(x,z)
	cell.color = default_color
	add_child(cell)
	cells.append(cell)

	var label = cell_label.instantiate() as Label3D
	label.position = cell_position + Vector3(0, 0.01, 0) # Prevents z fighting
	label.text = cell.coordinates.to_string_on_separate_lines()
	grid_labels.add_child(label)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		handle_input()

func handle_input():
	# Draw a line from the camera through the mouse to the map
	var camera = get_viewport().get_camera_3d()
	var mouse_pos = get_viewport().get_mouse_position()
	var from = camera.project_ray_origin(mouse_pos)
	var to = from + camera.project_ray_normal(mouse_pos) * 1000.0
	
	# gets the result of the hit
	var space_state = get_world_3d().direct_space_state
	var query = PhysicsRayQueryParameters3D.create(from, to)
	var result = space_state.intersect_ray(query)
	
	if result:
		touch_cell(result.position)

func touch_cell(p: Vector3) -> void:
	var local_pos = to_local(p)
	var coordinates = HexCoordinates.from_position(local_pos)
	var index = coordinates.x + coordinates.z * width + coordinates.z / 2
	var cell = cells[index]
	cell.color = touched_color
	hex_mesh.Triangulate(cells)
	
