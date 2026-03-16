class_name IngameResource extends Node

@export var resource_name: String
@export var icon: String
@export var cost: float
@export var type: Constants.resourceType
@export var subtype: Constants.resourceSubType
@export var spawn_rate: float
@export var spawn_points: int = 0

func _init(p_name: String = "", data: Dictionary = {}) -> void:
	resource_name = p_name
	icon = data.get("icon", "")
	cost = data.get("cost", 0.0)
	type = data.get("type", Constants.resourceType.NONE)
	subtype = data.get("subtype", Constants.resourceSubType.NONE)
	spawn_rate = data.get("spawn_rate", 0.0)
	spawn_points = data.get("spawn_points", 0)
