class_name HexMesh extends MeshInstance3D

var vertices: PackedVector3Array = PackedVector3Array()
var triangles: PackedInt32Array = PackedInt32Array()
var colors: PackedColorArray = PackedColorArray()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mesh = ArrayMesh.new()
	mesh.resource_name = "Hex Mesh"

func Triangulate(cells: Array):
	mesh.clear_surfaces()
	vertices = PackedVector3Array()
	triangles = PackedInt32Array()
	colors = PackedColorArray()
	
	for cell in cells:
		TriangulateCell(cell)
	
	var arrays = []
	arrays.resize(Mesh.ARRAY_MAX)
	arrays[Mesh.ARRAY_VERTEX] = vertices
	arrays[Mesh.ARRAY_INDEX] = triangles
	arrays[Mesh.ARRAY_COLOR] = colors
	mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)
	var st = SurfaceTool.new()
	st.create_from(mesh, 0)
	st.generate_normals()
	mesh.clear_surfaces()
	st.commit(mesh)
	$StaticBody3D/CollisionShape3D.shape = mesh.create_trimesh_shape()

func TriangulateCell(cell: hex_cell):
	for d in range(6):
		TriangulatePart(d,cell)

func TriangulatePart(direction: int, cell: hex_cell):
	var center: Vector3 = cell.position
	var v1: Vector3 = center + HexMetrics.GetFirstSolidCorner(direction)
	var v2: Vector3 = center + HexMetrics.GetSecondSolidCorner(direction)
	AddTriangle(center,v1,v2)
	addTriangleColor(cell.color,cell.color,cell.color)
	if(direction <= HexDirection.HexDirection.SE):
		TriangulateConnection(direction,cell,v1,v2)

func TriangulateConnection(direction: int, cell: hex_cell, v1: Vector3, v2: Vector3):
	var neighbor: hex_cell = cell.getNeighbor(direction)
	if neighbor == null:
		return
	var bridge: Vector3 = HexMetrics.GetBridge(direction)
	var v3 = v1 + bridge
	var v4 = v2 + bridge
	addQuad(v1,v2,v3,v4)
	addQuadColor(cell.color,cell.color,neighbor.color,neighbor.color)
	
	var nextNeighbor: hex_cell = cell.getNeighbor(HexDirection.Next(direction))
	if (direction <= HexDirection.HexDirection.E) and (nextNeighbor != null):
		AddTriangle(v2,v4,v2 + HexMetrics.GetBridge(HexDirection.Next(direction)))
		addTriangleColor(cell.color,neighbor.color,nextNeighbor.color)
	
func addTriangleColor(c1: Color,c2: Color,c3: Color):
	colors.append(c1)
	colors.append(c2)
	colors.append(c3)


func AddTriangle(v1: Vector3, v2: Vector3, v3: Vector3):
	var vertex_index: int = vertices.size()
	vertices.append(v1)
	vertices.append(v2)
	vertices.append(v3)
	triangles.append(vertex_index)
	triangles.append(vertex_index + 2)
	triangles.append(vertex_index + 1)
	
func addQuad(v1: Vector3, v2: Vector3, v3: Vector3, v4: Vector3) -> void:
	var vertexIndex = vertices.size()
	vertices.append(v1)
	vertices.append(v2)
	vertices.append(v3)
	vertices.append(v4)
	triangles.append(vertexIndex)
	triangles.append(vertexIndex + 1)
	triangles.append(vertexIndex + 2)
	triangles.append(vertexIndex + 1)
	triangles.append(vertexIndex + 3)
	triangles.append(vertexIndex + 2)
	
func addQuadColor(c1: Color, c2: Color,c3: Color,c4: Color):
	colors.append(c1)
	colors.append(c2)
	colors.append(c3)
	colors.append(c4)
