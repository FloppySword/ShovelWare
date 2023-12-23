extends microgame

@export var max_pump_val = 3
var current_pump_val = 0
var is_up = false


func _init(dif = difficulty):
	_time_step = 0.4
	_music_track = load("res://Scenes/MicroGames/ExampleMicroGame/Assets/Audio/DebugTrack.ogg")
	prompt = "Pump!"
	difficulty = dif
func _set_difficulty(dif):
	match dif:
		"easy":
			max_pump_val = 5
		"medium":
			max_pump_val = 7
		"hard":
			max_pump_val = 10
func _set_initial_values():
	var screen_size = get_viewport_rect().size
	var start_num_1 = randf_range(-1,1)
	var start_num_2 = randf_range(-1,1)
	$TestText.text = str(current_pump_val)

	#$MoveButton.position = screen_size/2
	#$MoveButton.velocity = move_speed * base_speed_multiplier * Vector2(start_num_1,start_num_2).normalized()

func _process(_delta):
	check_win()
#Maybe look at this logic again lol

func check_win():
	if current_pump_val > max_pump_val:
		end_state = "success"

func press_down():
	is_up = false
	current_pump_val += 1
	
func press_up():
	is_up = true
	current_pump_val += 1

func _input(event):
	if event is InputEventMouseButton:
#		if event.button_index == MOUSE_BUTTON_LEFT:
#			print("MEME")
		pass
	elif event is InputEventMouseMotion:
#		print(get_local_mouse_position())
#		print(get_global_mouse_position())
#		get_tree().get_root().warp_mouse($Sprite2D/Area2D/CollisionShape2D.global_position)
#		$Sprite2D/Area2D/CollisionShape2D.emit_signal("_on_mouse_shape_entered")
#		get_tree().get_root().update_mouse_cursor_state()
		pass		
#	else:
#		print(event)
#			print(get_local_mouse_position())
#			print(get_global_mouse_position())

func _on_button_pressed():
	set_process(false)
	end_state = "success"

func _on_area_2d_mouse_entered():
	print("STUFF")


func _on_area_2d_mouse_shape_entered(shape_idx):
	print("STUFF2")
	pass # Replace with function body.
