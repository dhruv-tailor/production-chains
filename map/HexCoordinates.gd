class_name HexCoordinates extends Resource

@export var x: int
@export var z: int
var y: int:
	get:
		return -x - z

func _init(x: int = 0, z: int = 0) -> void:
	self.x = x
	self.z = z

static func from_offset_coordinates(x: int, z: int) -> HexCoordinates:
	return HexCoordinates.new(x - z / 2,z)
	
func _to_string() -> String:
	return "(" + str(x) + ", " + str(y) + ", " + str(z) + ")"
	
func to_string_on_separate_lines() -> String:
	return str(x) + "\n" + str(y) + "\n" + str(z)

static func from_position(pos: Vector3) -> HexCoordinates:
	var x_local: float = pos.x / (HexMetrics.INNER_RADIUS * 2)
	var y_local: float = -x_local
	
	var offset: float = pos.z / (HexMetrics.OUTER_RADIUS * 3)
	x_local -= offset
	y_local -= offset
	
	var ix = roundi(x_local)
	var iy = roundi(y_local)
	var iz = roundi(-x_local-y_local)
	
	if (ix + iy + iz != 0):
		var dx: float = absf(x_local - ix)
		var dy: float = absf(y_local - iy)
		var dz: float = absf(-x_local - y_local -iz)
		if (dx > dy) and (dx > dz):
			ix = -iy - iz
		elif dz > dy:
			iz = -ix - iy
	
	return HexCoordinates.new(ix,iz)
