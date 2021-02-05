extends Node2D

pass
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("ParallaxBackground/NARRATOR/Label").text = global.poop


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("ParallaxBackground/NARRATOR/box").text = get_node("KinematicBody2D/Label").text
