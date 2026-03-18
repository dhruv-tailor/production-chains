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

func TriangulateCell(cell: MeshInstance3D):
	var center: Vector3 = cell.position
	for i in range(6):
		AddTriangle(
			center,
			center + HexMetrics.CORNERS[i],
			center + HexMetrics.CORNERS[i+1]
		)
		addTriangleColor(cell.color)

func addTriangleColor(col: Color):
	colors.append(col)
	colors.append(col)
	colors.append(col)

func AddTriangle(v1: Vector3, v2: Vector3, v3: Vector3):
	var vertex_index: int = vertices.size()
	vertices.append(v1)
	vertices.append(v2)
	vertices.append(v3)
	triangles.append(vertex_index)
	triangles.append(vertex_index + 2)
	triangles.append(vertex_index + 1)
	
