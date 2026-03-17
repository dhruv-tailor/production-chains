extends Panel

signal update_filter_list(filter_name,add_or_remove)

func setup(icon,text):
	$HBoxContainer/Icon.text = icon
	$HBoxContainer/Name.text = text


func _on_check_box_toggled(toggled_on: bool) -> void:
	emit_signal("update_filter_list",$HBoxContainer/Name.text,toggled_on)
