extends TextureButton


func _generate_block():
	var ins_violeta_chico = preload("res://scenes/Blocks/Violet/BlockViolet.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_VioletGenerator_button_down():
	_generate_block()
	pass # Replace with function body.
