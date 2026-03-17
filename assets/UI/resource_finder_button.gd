class_name resource_finder_button extends Button

@export var resourceType: Constants.resourceType
@export var subresourceType: Constants.resourceSubType

signal map_filter_clicked(resourceType,subresourceType)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(_button_pressed)
	tooltip_text = name

func _button_pressed():
	emit_signal("map_filter_clicked",resourceType,subresourceType)
