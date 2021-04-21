extends TextureButton


func _generate_block():
	var ins_rojo_chico = preload("res://scenes/Blocks/Red/BlockRed.tscn")
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_RedGenerator_button_down():
	_generate_block()
	pass # Replace with function body.
