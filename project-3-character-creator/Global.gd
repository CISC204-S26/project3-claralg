extends Node

@onready var current_label = $Camera3D/CanvasLayer/Container/Menu/StringDisplay/Current

@export var shape_state = ["Box", "Cylinder", "Sphere"]
@export var cube_skin_state = ["Blank", "Cobblestone", "Crate", "Companion"]
@export var cylinder_skin_state = ["Blank", "", "", ""]
@export var sphere_skin_state = ["Blank", "", "", ""]
@export var colour_state = ["White", "Red", "Blue", "Green"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	## Hides other shapes until selected
	$shapes/Cylinder.hide()
	$shapes/Sphere.hide()

	## Sets initial state
	shape_state = shape_state[0]
	cube_skin_state = cube_skin_state[0]
	colour_state = colour_state[0]

	$Camera3D/CanvasLayer/Container/Menu/StringDisplay/Current.text = str(colour_state)+" "+str(cube_skin_state)+" "+str(shape_state)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
