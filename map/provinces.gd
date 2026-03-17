extends Node2D
@onready var ProvinceScene = preload(Constants.SCENE_PATHS.province)

var province_grid: Array = [] # 2D array [y][x] of province nodes

func _ready() -> void:
	%ResourcesUI.filter_resources.connect(filter_resources)
	
func filter_resources(filters: Array[String]):
	print(filters)
	for row in province_grid:
		for province: Province in row:
			if province.local_resources.any(func(e: IngameResource): return filters.has(e.resource_name)):
				province.color = Color.GREEN
			else:
				province.color = Color.WHITE

## Generates all the provinces and assigns resources
func generate_provinces(width: int, height: int) -> void:
	var ids: int = 0
	province_grid.resize(height)
	for j in range(height):
		province_grid[j] = []
		province_grid[j].resize(width)
		for i in range(width):
			var province = ProvinceScene.instantiate()
			var y_offset: int = 50 if i % 2 == 1 else 0
			province.position = Vector2(i * 75, j * 100 + y_offset)
			province.name = "Province_%d_%d" % [i, j]
			province.id = ids
			ids += 1
			add_child(province)
			province_grid[j][i] = province
	_assign_resources(width, height)

## Assigns resources to provinces based on spawn rules
func _assign_resources(width: int, height: int) -> void:
	for resource_name in Resources.RESOURCES:
		var data: Dictionary = Resources.RESOURCES[resource_name]
		var spawn_points: int = data["spawn_points"]
		var spawn_rate: float = data["spawn_rate"]

		if spawn_points == 0:
			# Global: each province independently rolls
			for j in range(height):
				for i in range(width):
					if randf() < spawn_rate:
						province_grid[j][i].local_resources.append(IngameResource.new(resource_name, data))
		else:
			# Clustered: place seed provinces, then cascade outward
			var seeds: Array[Vector2i] = []
			for s in range(spawn_points):
				seeds.append(Vector2i(randi_range(0, width - 1), randi_range(0, height - 1)))

			var visited: Dictionary = {}
			var queue: Array[Vector2i] = []
			for seed_pos in seeds:
				if visited.has(seed_pos):
					continue
				visited[seed_pos] = true
				province_grid[seed_pos.y][seed_pos.x].local_resources.append(IngameResource.new(resource_name, data))
				queue.append(seed_pos)

			while queue.size() > 0:
				var current: Vector2i = queue.pop_front()
				var neighbors: Array[Vector2i]
				if current.x % 2 == 0:
					neighbors = [
						Vector2i(current.x, current.y - 1),
						Vector2i(current.x + 1, current.y - 1),
						Vector2i(current.x + 1, current.y),
						Vector2i(current.x, current.y + 1),
						Vector2i(current.x - 1, current.y),
						Vector2i(current.x - 1, current.y - 1),
					]
				else:
					neighbors = [
						Vector2i(current.x, current.y - 1),
						Vector2i(current.x + 1, current.y),
						Vector2i(current.x + 1, current.y + 1),
						Vector2i(current.x, current.y + 1),
						Vector2i(current.x - 1, current.y + 1),
						Vector2i(current.x - 1, current.y),
					]
				for neighbor in neighbors:
					if neighbor.x < 0 or neighbor.x >= width or neighbor.y < 0 or neighbor.y >= height:
						continue
					if visited.has(neighbor):
						continue
					visited[neighbor] = true
					if randf() < spawn_rate:
						province_grid[neighbor.y][neighbor.x].local_resources.append(IngameResource.new(resource_name, data))
						queue.append(neighbor)
