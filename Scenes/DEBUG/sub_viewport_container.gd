extends SubViewportContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _gui_input(event):
#	print(event)
	$SubViewport.push_input(event, true)
	$SubViewport.push_unhandled_input(event, true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
