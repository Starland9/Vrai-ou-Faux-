extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func load_questions():
	var f = FileAccess.open("res://Datas/questions.json", FileAccess.READ)
	var map : Array = JSON.parse_string(f.get_as_text())
	var q := Question.create("une banane", 1)
	print(q.question)
