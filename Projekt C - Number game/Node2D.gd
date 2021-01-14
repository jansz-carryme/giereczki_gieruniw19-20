extends Node2D
var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


func _ready():
	print(array[randi()%array.size()]) 



func _on_Label_text_entered(new_text):
	if  text == 1:
		print ("no")
