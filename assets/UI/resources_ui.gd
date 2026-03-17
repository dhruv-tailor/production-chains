extends CanvasLayer

signal filter_resources(filters)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for child in $CenterContainer/HBoxContainer.get_children():
		child.map_filter_clicked.connect(filter_clicked)
		
	pass # Replace with function body.

func filter_clicked(resourceType: Constants.resourceType, resourceSubtype: Constants.resourceSubType):
	$"Filter Panel".filter_clicked(resourceType,resourceSubtype)


func _on_button_pressed() -> void:
	filter_clicked(Constants.resourceType.NONE,Constants.resourceSubType.NONE)


func _on_filter_panel_update_resource_filters(filters: Array[String]) -> void:
	emit_signal("filter_resources",filters)
