extends Control
var rng = RandomNumberGenerator.new()
var tries = 7

func _ready():
	pass
	#get_node("Label").text = "Pies"
	#$Label.text = "Piesy"

	rng.randomize()
	var my_random_number = rng.randi_range(0, 100)
	get_node("SpinBoxCode").value = my_random_number
	#var number_txt = str(my_random_number)
	
	#ON/OFF wyświetlanie w konsoli
	print(my_random_number)
	
	
	
	#print(number_txt)
	get_node("LabelTries").value = tries
##wersja string##
	#var solution = "98"
	#if try == solution: $Label.text = "yeah bwai"

#gdy gracz klika enterem w SpinBoxa
func _on_SpinBoxUI_value_changed(try):
	#if Input.is_action_just_pressed('ui_accept'):
	tries = tries - 1
	get_node("LabelTries").value = tries
	if try == $SpinBoxCode.value:
		get_node("LabelUI").text = "Your brain is too humongous!"
	if try > $SpinBoxCode.value:
		get_node("LabelUI").text = "You critically overestimate!"
	if try < $SpinBoxCode.value:
		get_node("LabelUI").text = "You critically underestimate!"
	if tries == 0:
		get_tree().change_scene("res://gameover.tscn")
#gdy jest 0 prób i wygrana
	if $LabelTries.value == 0 and try == $SpinBoxCode.value:
		get_tree().change_scene("res://close oen.tscn")
		
