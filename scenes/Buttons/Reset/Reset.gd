extends TextureButton



func _ready():
	pass # Replace with function body.


func _on_Reset_button_down():
	get_tree().call_group("blocks" , "_delete")
	pass
