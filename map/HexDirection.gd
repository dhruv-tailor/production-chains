class_name HexDirection

enum HexDirection {
	NE, E, SE, SW, W, NW
}

static func Opposite(direction: int) -> int:
	return (direction + 3) % 6

static func Previous(direction: int) -> int:
	return HexDirection.HexDirection.NW if direction == HexDirection.HexDirection.NE else (direction - 1)

static func Next(direction: int):
	return HexDirection.HexDirection.NE if direction == HexDirection.HexDirection.NW else (direction + 1)
