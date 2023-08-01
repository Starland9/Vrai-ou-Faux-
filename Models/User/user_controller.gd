extends Node
class_name UserController

const user_store_file := "user://user.json"



func user_from_login(data: Dictionary)-> User:
	var user := User.new()
	user.fullname = data.fullname
	user.email = data.email
	user.photoUrl = data.photourl
	user.score = user.score
	
	return user
	
	
func save_user_datas(data: Dictionary):
	var file := FileAccess.open(user_store_file, FileAccess.WRITE)
	var json_data := JSON.stringify(data)
	file.store_string(json_data)
	file.close()
	
	
func load_user_datas() -> Dictionary:
	var file := FileAccess.open(user_store_file, FileAccess.READ)
	var string_data = file.to_string()
	var map_data = JSON.parse_string(string_data)
	file.close()
	return map_data
	
func save_user_in_firestore(user: User):
	var user_collection := Firebase.Firestore
	var collection := user_collection.collection("vof_users")
	collection.add(user.email, user.toMap())
	
	
	
