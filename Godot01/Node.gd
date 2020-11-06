extends Node

[gd_scene load_steps=2 format=2]

[sub_resource type="GDScript" id=1]
script/source = "extends Node

var welcomeFirst = \"Hello\"
var welcomeSecond = \"Holla\"
var nameFirst = \"John\"
var nameSecond = \"Juan\"
var number = 10

var names = [\"Jan\", \"John\", \"Juan\"]
var welcomes = [\"Czesc\", \"Hello\", \"Holla\"]

func _ready():
	print(welcomes[1] + \" my name is \" + names[2])



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
"

[node name="Node" type="Node"]
script = SubResource( 1 )

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
