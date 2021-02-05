extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_LineEdit_text_entered(new_text):
	$welcome2.text = "Haven't heard of a " + new_text + " before."
	$buttonr.visible = true
	global.poop = new_text

func _on_Button_pressed():
	get_tree().change_scene("res://LEVEL 1 - FOREST.tscn")
