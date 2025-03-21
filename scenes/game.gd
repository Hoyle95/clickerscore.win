extends Control

var score = 0
var playing = true;

func _on_clicky_button_pressed() -> void:

	if playing == true:
		if $Timer.is_stopped():
			$Timer.start()
		
		$Tap2.play()
		score = score + 1
	

func _process(delta: float) -> void:
	$SecondsLeft.text = str(int(ceil($Timer.time_left)))
	$clicks.text = str(score)


func _on_timer_timeout() -> void:
	playing = false
	$Timer.stop()
	$SecondsLeft.visible = false
	$SecondsText.visible = false
	$ClickyButton.visible = false
	$submitScore.visible = true
	$nameInput.visible = true

func _on_reset_button_2_pressed() -> void:
	playing = true
	score = 0
	$Timer.stop()
	$SecondsLeft.visible = true
	$SecondsText.visible = true
	$ClickyButton.visible = true
	$submitScore.visible = false
	$nameInput.visible = false
	$SecondsText.text = "Seconds"

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/mainMenu.tscn")
	$submitScore.visible = false
	$nameInput.visible = false


func _on_submit_score_pressed() -> void:
	SilentWolf.Scores.save_score($nameInput.text, score)
	$SecondsText.visible = true
	$submitScore.visible = false
	$nameInput.visible = false
	$SecondsText.text = "Thank you!"
