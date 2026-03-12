extends Node2D
@onready var ProvinceScene = preload("res://Scenes/Map/province.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

## Generates all the provinces
func generate_provinces(width: int, height: int) -> void:
	var ids: int = 0
	for j in range(height):
		for i in range(width):
			var province = ProvinceScene.instantiate()
			province.position = Vector2(i * 100, j * 100)
			province.name = "Province_%d_%d" % [i, j]
			province.id = ids
			ids += 1
			add_child(province)
