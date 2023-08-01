extends Node
class_name User

var fullname: String
var score: int
var photoUrl: String
var email: String


func toMap() -> Dictionary:
	return {
		"fullname" : fullname,
		"score" : score,
		"photoUrl" : photoUrl,
		"email" : email
	}
