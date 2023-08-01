@tool
extends Node
class_name  Question
	
var question: String
var response: int

func _init():
	self.question = ""
	self.response = 0
	print("init questions")

	
static func create(q: String, r: int) -> Question:
	var qst = Question.new()
	qst.question = q
	qst.response = r
	return qst
	
