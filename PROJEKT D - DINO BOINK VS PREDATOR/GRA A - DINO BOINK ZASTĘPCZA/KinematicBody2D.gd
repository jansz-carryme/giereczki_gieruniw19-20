extends KinematicBody2D


export (int) var run_speed = 100
export (int) var jump_speed = -4800
export (int) var gravity = 1200

var velocity = Vector2()
var jumping = false

func get_input():
	velocity.x = 0
	var right = Input.is_action_pressed('ui_right')
	var left = Input.is_action_pressed('ui_left')
	var jump = Input.is_action_just_pressed('ui_up')

	if jump and is_on_floor():
		jumping = true
		$boink.play()
		velocity.y = jump_speed
	if right:
		velocity.x += run_speed
	if left:
		velocity.x -= run_speed

	if velocity.x != 0:
		$AnimatedSprite.animation = "RUN"
		$AnimatedSprite.flip_v = false
		$AnimatedSprite.flip_h = velocity.x < 0
	if velocity.x==0 :
		$AnimatedSprite.animation = "stand"



func _physics_process(delta):
	get_input()
	velocity.y += gravity * delta
	if jumping and is_on_floor():
		jumping = false
	velocity = move_and_slide(velocity, Vector2(0, -1))



func _on_KILLZONE_body_entered(body):
	get_tree().change_scene("res://death.tscn")

func _on_dialouge_body_entered(body):
	$Label.text = "So, " + global.poop + ", it was a normal for DinoBoi, munching on some leaves in the forest, when he heard a loud cry from the insides of the local volcano. Then some weird sounds followed, and a loud crash."

func _on_nar1_body_entered(body):
	$Label.text = "Scared, he took it upon himself to save whoever or whatever was in the fire pit. All he knew was boinking and saving things. Long family business."


func _on_nar2_body_entered(body):
	$Label.text = "He boinked on all the moving platforms...."


func _on_nar3_body_entered(body):
	$Label.text = "...and now he has to wait for an elevator?!"


func _on_nar0_body_entered(body):
	$Label.text = "Millions of years ago, way far away, in Jurassic land, lived the DinoBoi. The boinky little creature, always laughed at by bigger dinosaurs, was of peaceful composure and impressive jumps."


func _on_next_level_body_entered(body):
	get_tree().change_scene("res://Level2.tscn")
