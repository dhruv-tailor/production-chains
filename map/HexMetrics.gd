class_name HexMetrics

const OUTER_RADIUS: float = 2
const INNER_RADIUS: float = OUTER_RADIUS * 0.866025404
const SOLID_FACTOR: float = 0.75
const BLEND_FACTOR: float = 1.0 - SOLID_FACTOR
const ELEVATION_STEP: float = 1
const TERRACES_PER_SLOPE: int = 2
const TERRACE_STEPS: int = TERRACES_PER_SLOPE * 2 + 1
const HORIZONTAL_TERRACE_STEP_SIZE: float = 1.0 / TERRACE_STEPS
const VERTICAL_TERRACE_STEP_SIZE: float = 1.0 / (TERRACES_PER_SLOPE + 1)

const CORNERS: Array[Vector3] = [
	Vector3(0,0,OUTER_RADIUS),
	Vector3(INNER_RADIUS,0,0.5 * OUTER_RADIUS),
	Vector3(INNER_RADIUS,0,-0.5 * OUTER_RADIUS),
	Vector3(0,0,-OUTER_RADIUS),
	Vector3(-INNER_RADIUS,0,-0.5 * OUTER_RADIUS),
	Vector3(-INNER_RADIUS,0,0.5 * OUTER_RADIUS),
	Vector3(0,0,OUTER_RADIUS),
]
enum HexEdgeType {
	Flat,
	Slope,
	Cliff
}

static func GetEdgeType(elevation1: int, elevation2: int) -> HexEdgeType:
	if elevation1 == elevation2:
		return HexEdgeType.Flat
	var delta = elevation2 - elevation1
	if delta == 1 or delta == -1:
		return HexEdgeType.Slope
	return HexEdgeType.Cliff

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

static func TerraceLerp(a: Vector3,b : Vector3, step: int) -> Vector3:
	var h: float = step * HexMetrics.HORIZONTAL_TERRACE_STEP_SIZE
	a.x += (b.x - a.x) * h
	a.z += (b.z - a.z) * h
	var v: float = ((step + 1) / 2) * HexMetrics.VERTICAL_TERRACE_STEP_SIZE
	a.y += (b.y - a.y) * v
	return a

static func TerraceColorLerp(a: Color, b: Color, step: int) -> Color:
	var h: float = step * HexMetrics.HORIZONTAL_TERRACE_STEP_SIZE
	return a.lerp(b,h)
