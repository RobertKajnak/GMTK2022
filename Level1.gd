extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Dice.linear_velocity = Vector3(-15,4,0)
	$Dice.angular_velocity = Vector3(8,4,4)
	pass

func tip_tray(direction):
	pass

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_left"):
		tip_tray(-1)
		


func exit_game():
	get_tree().quit()


#%% Input handling
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed:
			if event.scancode == KEY_ESCAPE:
				exit_game()
			elif event.scancode == KEY_UP:
				print('UPO!')
				
func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		# For Windows, if 'x' is clicked, alt-f4 etc.
		pass
	elif what == MainLoop.NOTIFICATION_WM_GO_BACK_REQUEST: 
		# For android
		exit_game()
		
	elif what == MainLoop.NOTIFICATION_WM_FOCUS_IN or what == MainLoop.NOTIFICATION_WM_FOCUS_OUT:
		#Pause
		pass
