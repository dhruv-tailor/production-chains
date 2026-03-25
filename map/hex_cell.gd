class_name hex_cell
var coordinates: HexCoordinates
var color: Color
var position: Vector3

var neighbors: Array = []
var _elevation: int;

var Elevation: int:
	get:
		return _elevation
	set(value):
		_elevation = value
		position.y = value * HexMetrics.ELEVATION_STEP

		

func _init():
	neighbors.resize(6)
	neighbors.fill(null)

func getNeighbor (direction: HexDirection.HexDirection):
	return neighbors[int(direction)]

func setNeighbor(direction: HexDirection.HexDirection, cell: hex_cell):
	neighbors[int(direction)] = cell
	cell.neighbors[int(HexDirection.Opposite(int(direction)))] = self

func getEdgeType(direction: HexDirection.HexDirection) -> HexMetrics.HexEdgeType:
	return HexMetrics.GetEdgeType(Elevation, neighbors[int(direction)].Elevation)

func getEdgeTypeFromCell(other_cell: hex_cell) -> HexMetrics.HexEdgeType:
	return HexMetrics.GetEdgeType(Elevation, other_cell.Elevation)