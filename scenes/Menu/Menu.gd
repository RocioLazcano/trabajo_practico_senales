extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0
var bloque_rojo = preload("res://scenes/Blocks/Red/BlockRed.tscn")
var bloque_violeta = preload("res://scenes/Blocks/Violet/BlockViolet.tscn")
var reset = preload("res://scenes/Buttons/Reset/Reset.tscn")

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + String(instancesCount)
	$RedGenerator.connect("button_down" , self , "count_new_instanceR")
	$VioletGenerator.connect("button_down" , self , "count_new_instanceV")
	$Reset.connect("button_down", self , "_delete")
	

func count_new_instanceR():
	if Input.is_action_pressed("left_click"):
		instancesCount += 1
		$CountLabel.text = "Cantidad de instancias: " + String (instancesCount)
		var ins_rojo_chico = bloque_rojo.instance()
		add_child(ins_rojo_chico)
		ins_rojo_chico.position = get_tree().root.get_mouse_position()

func count_new_instanceV():
	if Input.is_action_just_pressed("left_click"):
		instancesCount += 1
		$CountLabel.text = "Cantidad de instancias: " + String (instancesCount)
		var ins_violeta_chico = bloque_violeta.instance();
		add_child(ins_violeta_chico)
		ins_violeta_chico.position = get_tree().root.get_mouse_position()


	pass
func _delete():
	if Input.is_action_just_pressed("left_click"):
		instancesCount = 0
		$CountLabel.text = "Cantidad de instancias: " + "0"
		get_tree().call_group("blocks", "_delete")
	pass
	
