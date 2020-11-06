extends Node

var welcomeFirst = "Hello hello"
var welcomeSecond = "Bonjour"
var nameFirst = "Gonsalito"
var nameSecond = "Thorhamptonington"
var dada = 2
[gd_scene load_steps=2 format=2]

var names = ["Jan", "John", "Konar", "Seba", "Sztywny", "Gonsalito"]
var welcomes = ["Czesc", "Hello", "No hejo", "Siema", "Elo"]
var coLubieRobic = ["Wziuu", "Łiiiii", "Aaaaa", "BRRRRR", "REEEEE"]
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
# print("Hello World")
# print (2+7)
# print ("2+7")

	print (welcomes [3] + "!" + " Mam na imię " + names [0] + "." + " Lubię robić " + coLubieRobic [1]) 
	print (welcomes [0] + "!" + " Mam na imię " + names [1] + "." + " Lubię robić " + coLubieRobic [3]) 
	print (welcomes [1] + "!" + " Mam na imię " + names [3] + "." + " Lubię robić " + coLubieRobic [4]) 
	print (welcomes [4] + "!" + " Mam na imię " + names [2] + "." + " Lubię robić " + coLubieRobic [0]) 
	print (welcomes [2] + "!" + " Mam na imię " + names [4] + "." + " Lubię robić " + coLubieRobic [2]) 
	print(welcomes[1] + \" my name is \" + names[2])



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
"
[node name="Node" type="Node"]
script = SubResource( 1 )
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
