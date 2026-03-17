extends Panel

@onready var filter_menu = preload(Constants.SCENE_PATHS.filter_menu)
@onready var scroll_box = $ScrollContainer/VBoxContainer

signal update_resource_filters(filters: Array[String])

var filter_list: Array[String] = []
func filter_clicked(resourceType: Constants.resourceType, resourceSubtype: Constants.resourceSubType):
	filter_list = []
	for child in scroll_box.get_children():
		child.queue_free()
	if resourceType == Constants.resourceType.NONE:
		return
	for r_type in Resources.RESOURCES:
		var value = Resources.RESOURCES[r_type]
		if value.type == resourceType:
			if resourceSubtype == Constants.resourceSubType.NONE || resourceSubtype == value.subtype:
				var child = filter_menu.instantiate()
				child.setup(value.icon,r_type)
				scroll_box.add_child(child)
				child.update_filter_list.connect(update_filter_list)
	emit_signal("update_resource_filters",filter_list)
	visible = true
func _on_button_pressed() -> void:
	filter_list = []
	for child in scroll_box.get_children():
		child.queue_free()
	emit_signal("update_resource_filters",filter_list)
	visible = false

func update_filter_list(filter_name: String, add_or_remove: bool):
	if add_or_remove:
		filter_list.append(filter_name)
	else:
		filter_list.erase(filter_name)
	emit_signal("update_resource_filters",filter_list)
