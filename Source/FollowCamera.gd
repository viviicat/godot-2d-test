extends Camera2D

onready var target_node: Node2D = get_parent()


# Called when the node enters the scene tree for the first time.
func _ready():
	set_as_toplevel(true)

func _physics_process(_delta):
	position = target_node.position
