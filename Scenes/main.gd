extends Control

@onready var user_controller := UserController.new()



func _ready():
	user_controller.save_user_in_firestore(User.new())
	


