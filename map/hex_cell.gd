class_name hex_cell
var coordinates: HexCoordinates
var color: Color
var position: Vector3

var neighbors: Array = []

func _init():
	neighbors.resize(6)
	neighbors.fill(null)

func getNeighbor (direction: HexDirection.HexDirection):
	return neighbors[int(direction)]

func setNeighbor(direction: HexDirection.HexDirection, cell: hex_cell):
	neighbors[int(direction)] = cell
	cell.neighbors[int(HexDirection.Opposite(int(direction)))] = self
