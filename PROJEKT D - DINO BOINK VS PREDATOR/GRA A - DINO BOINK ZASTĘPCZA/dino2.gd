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

func _on_narr2_body_entered(body):
	$narrator.text = "Time was of essence, as the DinoBoi had to boink his way to the council of elders to warn his folk if anything goes wrong. Lives are at stake!"

func _on_narr3_body_entered(body):
	$narrator.text = "The sounds of some weird machine were getting louder, and the huge Evil Dinosaur was looming in the distance, a grim reminder of the upcoming disaster. Where is the elevator?!"

func _on_narr4_body_entered(body):
	$narrator.text = "The endless maze proved to be a nothing of an opponent to the DinoBoi's skill!"

func _on_narr5_body_entered(body):
	$narrator.text = "Almost there, what will the DinoBoi do? Will he save the world from the Bad-Zilla? Will he find the source of the sound!?"

func _on_narr1_body_entered(body):
	$narrator.text = "The fiery pit...and....is THAT THE APOCALYPSE?!"

func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://death2.tscn")
	
func _on_finish_body_entered(body):
	get_tree().change_scene("res://end.tscn")



func _on_Area2D2_body_entered(body):
	$roar.play()


func _on_narr6_body_entered(body):
	$narrator.text = $doctor.text
