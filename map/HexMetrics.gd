class_name HexMetrics

const OUTER_RADIUS: float = 2
const INNER_RADIUS: float = OUTER_RADIUS * 0.866025404
const SOLID_FACTOR: float = 0.75
const BLEND_FACTOR: float = 1.0 - SOLID_FACTOR

const CORNERS: Array[Vector3] = [
	Vector3(0,0,OUTER_RADIUS),
	Vector3(INNER_RADIUS,0,0.5 * OUTER_RADIUS),
	Vector3(INNER_RADIUS,0,-0.5 * OUTER_RADIUS),
	Vector3(0,0,-OUTER_RADIUS),
	Vector3(-INNER_RADIUS,0,-0.5 * OUTER_RADIUS),
	Vector3(-INNER_RADIUS,0,0.5 * OUTER_RADIUS),
	Vector3(0,0,OUTER_RADIUS),
]

static func GetFirstCorner(direction: int) -> Vector3:
	return HexMetrics.CORNERS[direction]
static func GetSecondCorner(direction: int) -> Vector3:
	return HexMetrics.CORNERS[direction + 1]

static func GetFirstSolidCorner(direction: int) -> Vector3:
	return HexMetrics.CORNERS[direction] * SOLID_FACTOR
static func GetSecondSolidCorner(direction: int) -> Vector3:
	return HexMetrics.CORNERS[direction + 1] * SOLID_FACTOR

static func GetBridge(direction: int) -> Vector3:
	return (CORNERS[direction] + CORNERS[direction + 1]) * BLEND_FACTOR
