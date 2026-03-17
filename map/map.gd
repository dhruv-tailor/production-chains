extends Node2D
@onready var provinces = $Provinces
# Called when the node enters the scene tree for the first time.
## Width of the map in terms of number of provinces
@export var width: int = 92
## Height of the map in terms of number of provinces
@export var height: int = 35

func _ready() -> void:
	provinces.generate_provinces(width, height)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
