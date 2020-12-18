extends RigidBody

var score = 100

func _ready():
	print("Starting points " + str(score))
	var GO = get_node("../start").get_translation()
	print(GO)


func _process(_delta):
	var bodies = get_colliding_bodies()

	for everybody in bodies:
		if(everybody.get_name() == "bramka"):
			score +=5
			print ("scored! twoje punkty to " + str(score))

#func _ready(): 
	#for cokolwiek in "Hello World!":
		#print(cokolwiek) 


func _on_Timer_timeout():
	print("Pyk")
