extends Control

@onready var auth := Firebase.Auth
@onready var user_controller := UserController.new()
@onready var user := User.new()

func _ready():
	auth.login_succeeded.connect(_on_login_succes)
	auth.login_failed.connect(_on_login_failed)

	
func _on_login_succes(auth_result):
	user = user_controller.user_from_login(auth_result)
	user_controller.save_user_in_firestore(user)
	
	
func _on_login_failed(code, message):
	print("code :", code)
	print("message : ", message)
	

func _on_login_button_button_up():
	auth.get_auth_localhost(auth.get_GoogleProvider())
