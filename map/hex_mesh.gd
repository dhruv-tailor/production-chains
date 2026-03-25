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
	v3.y = neighbor.Elevation * HexMetrics.ELEVATION_STEP
	v4.y = neighbor.Elevation * HexMetrics.ELEVATION_STEP

	if(cell.getEdgeType(direction) == HexMetrics.HexEdgeType.Slope):
		TriangulateEdgeTerraces(v1,v2,cell,v3,v4,neighbor)
	else:
		addQuad(v1,v2,v3,v4)
		addQuadColor(cell.color,cell.color,neighbor.color,neighbor.color)
	
	var nextNeighbor: hex_cell = cell.getNeighbor(HexDirection.Next(direction))
	if (direction <= HexDirection.HexDirection.E) and (nextNeighbor != null):
		var v5: Vector3 = v2 + HexMetrics.GetBridge(HexDirection.Next(direction))
		v5.y = nextNeighbor.Elevation * HexMetrics.ELEVATION_STEP
		
		if (cell.Elevation <= neighbor.Elevation):
			if (cell.Elevation <= nextNeighbor.Elevation):
				TriangulateCorner(v2,cell,v4,neighbor,v5,nextNeighbor)
			else:
				TriangulateCorner(v5,nextNeighbor,v2,cell,v4,neighbor)
		elif (neighbor.Elevation <= nextNeighbor.Elevation):
			TriangulateCorner(v4,neighbor,v5,nextNeighbor,v2,cell)
		else:
			TriangulateCorner(v5,nextNeighbor,v4,neighbor,v2,cell)

func TriangulateEdgeTerraces(
	beginLeft: Vector3, beginRight: Vector3, beginCell: hex_cell,
	endLeft: Vector3, endRight: Vector3, endCell: hex_cell
):
	var v3: Vector3 = HexMetrics.TerraceLerp(beginLeft,endLeft,1)
	var v4: Vector3 = HexMetrics.TerraceLerp(beginRight,endRight,1)
	var c2: Color = HexMetrics.TerraceColorLerp(beginCell.color,endCell.color,1)

	addQuad(beginLeft,beginRight,v3,v4)
	addQuadColor(beginCell.color,beginCell.color,c2,c2)

	for i in range(2, HexMetrics.TERRACE_STEPS):
		var v1: Vector3 = v3
		var v2: Vector3 = v4
		var c1: Color = c2
		v3 = HexMetrics.TerraceLerp(beginLeft,endLeft,i)
		v4 = HexMetrics.TerraceLerp(beginRight,endRight,i)
		c2 = HexMetrics.TerraceColorLerp(beginCell.color,endCell.color,i)
		addQuad(v1,v2,v3,v4)
		addQuadColor(c1,c1,c2,c2)

	addQuad(v3,v4,endLeft,endRight)
	addQuadColor(c2,c2,endCell.color,endCell.color)

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

func TriangulateCorner(
	bottom: Vector3, bottomCell: hex_cell,
	left: Vector3, leftCell: hex_cell,
	right: Vector3, rightCell: hex_cell
):
	var leftEdgeype: HexMetrics.HexEdgeType = bottomCell.getEdgeTypeFromCell(leftCell)
	var rightEdgeType: HexMetrics.HexEdgeType = bottomCell.getEdgeTypeFromCell(rightCell)

	if(leftEdgeype == HexMetrics.HexEdgeType.Slope):
		if (rightEdgeType == HexMetrics.HexEdgeType.Slope):
			TriangulateCornerTerraces(bottom,bottomCell,left,leftCell,right,rightCell)
		elif (rightEdgeType == HexMetrics.HexEdgeType.Flat):
			TriangulateCornerTerraces(left,leftCell,right,rightCell,bottom,bottomCell)
		else:
			TriangulateCornerTerracesCliff(bottom,bottomCell,left,leftCell,right,rightCell)
	elif(rightEdgeType == HexMetrics.HexEdgeType.Slope):
		if (leftEdgeype == HexMetrics.HexEdgeType.Flat):
			TriangulateCornerTerraces(right,rightCell,bottom,bottomCell,left,leftCell)
		else:
			TriangulateCornerCliffTerraces(bottom,bottomCell,left,leftCell,right,rightCell)
	elif (leftCell.getEdgeTypeFromCell(rightCell) == HexMetrics.HexEdgeType.Slope):
		if(leftCell.Elevation < rightCell.Elevation):
			TriangulateCornerCliffTerraces(right,rightCell,bottom,bottomCell,left,leftCell)
		else:
			TriangulateCornerTerracesCliff(left,leftCell,right,rightCell,bottom,bottomCell)
	else:
		AddTriangle(bottom,left,right)
		addTriangleColor(bottomCell.color,leftCell.color,rightCell.color)

func TriangulateCornerTerraces(
	begin: Vector3, beginCell: hex_cell,
	left: Vector3, leftCell: hex_cell,
	right: Vector3, rightCell: hex_cell
):
	var v3: Vector3 = HexMetrics.TerraceLerp(begin,left,1)
	var v4: Vector3 = HexMetrics.TerraceLerp(begin,right,1)
	var c3: Color = HexMetrics.TerraceColorLerp(beginCell.color,leftCell.color,1)
	var c4: Color = HexMetrics.TerraceColorLerp(beginCell.color,rightCell.color,1)

	AddTriangle(begin,v3,v4)
	addTriangleColor(beginCell.color,c3,c4)

	for i in range(2, HexMetrics.TERRACE_STEPS):
		var v1: Vector3 = v3
		var v2: Vector3 = v4
		var c1: Color = c3
		var c2: Color = c4
		v3 = HexMetrics.TerraceLerp(begin,left,i)
		v4 = HexMetrics.TerraceLerp(begin,right,i)
		c3 = HexMetrics.TerraceColorLerp(beginCell.color,leftCell.color,i)
		c4 = HexMetrics.TerraceColorLerp(beginCell.color,rightCell.color,i)
		addQuad(v1,v2,v3,v4)
		addQuadColor(c1,c2,c3,c4)

	addQuad(v3,v4,left,right)
	addQuadColor(c3,c4,leftCell.color,rightCell.color)

func TriangulateCornerTerracesCliff(
	begin: Vector3, beginCell: hex_cell,
	left: Vector3, leftCell: hex_cell,
	right: Vector3, rightCell: hex_cell
):
	var b: float = 1.0 / (rightCell.Elevation - beginCell.Elevation)
	if (b < 0):
		b = -b
	var boundary: Vector3 = begin.lerp(right, b)
	var boundary_color: Color = beginCell.color.lerp(rightCell.color, b)

	TriangulateBoundaryTriangle(begin,beginCell,left,leftCell,boundary,boundary_color)

	if (leftCell.getEdgeTypeFromCell(rightCell) == HexMetrics.HexEdgeType.Slope):
		TriangulateBoundaryTriangle(left,leftCell,right,rightCell,boundary,boundary_color)
	else:
		AddTriangle(left,right,boundary)
		addTriangleColor(leftCell.color,rightCell.color,boundary_color)

func TriangulateCornerCliffTerraces(
	begin: Vector3, beginCell: hex_cell,
	left: Vector3, leftCell: hex_cell,
	right: Vector3, rightCell: hex_cell
):
	var b: float = 1.0 / (leftCell.Elevation - beginCell.Elevation)
	if (b < 0):
		b = -b
	var boundary: Vector3 = begin.lerp(left, b)
	var boundary_color: Color = beginCell.color.lerp(leftCell.color, b)

	TriangulateBoundaryTriangle(right,rightCell,begin,beginCell,boundary,boundary_color)

	if (leftCell.getEdgeTypeFromCell(rightCell) == HexMetrics.HexEdgeType.Slope):
		TriangulateBoundaryTriangle(left,leftCell,right,rightCell,boundary,boundary_color)
	else:
		AddTriangle(left,right,boundary)
		addTriangleColor(leftCell.color,rightCell.color,boundary_color)


func TriangulateBoundaryTriangle (
	begin: Vector3, beginCell: hex_cell,
	left: Vector3, leftCell: hex_cell,
	boundary: Vector3, boundary_color: Color
):
	var v2: Vector3 = HexMetrics.TerraceLerp(begin,left,1)
	var c2: Color = HexMetrics.TerraceColorLerp(beginCell.color,leftCell.color,1)

	AddTriangle(begin,v2,boundary)
	addTriangleColor(beginCell.color,c2,boundary_color)

	for i in range(2, HexMetrics.TERRACE_STEPS):
		var v1: Vector3 = v2
		var c1: Color = c2
		v2 = HexMetrics.TerraceLerp(begin,left,i)
		c2 = HexMetrics.TerraceColorLerp(beginCell.color,leftCell.color,i)
		AddTriangle(v1,v2,boundary)
		addTriangleColor(c1,c2,boundary_color)

	AddTriangle(v2,left,boundary)
	addTriangleColor(c2,leftCell.color,boundary_color)