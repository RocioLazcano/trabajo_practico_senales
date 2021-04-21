extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

func count_new_instance():
	if Input.is_action_just_pressed("left_click"):
		instancesCount += 1
		$CountLabel.text = "Cantidad de instancias: " + String (instancesCount)
		
func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + String(instancesCount)
	$RedGenerator.connect("button_down" , self , "count_new_instance")
	$VioletGenerator.connect("button_down" , self , "count_new_instance")
	$Reset.connect("button_down", self , "_delete")

	pass
func _delete():
	if Input.is_action_just_pressed("left_click"):
		instancesCount = 0
		$CountLabel.text = "Cantidad de instancias :" + "0"
		get_tree().call_group("blocks", "_delete")
	
