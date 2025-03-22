extends Control

func _ready() -> void:
	loadScores()

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/mainMenu.tscn")

func loadScores() -> void:
	if SilentWolf.Scores.scores == []:
		var l = Label.new()
		l.text = "Please Reload"
		$VBoxContainer.add_child(l)
	else:
		for i in SilentWolf.Scores.scores:
			var l = Label.new()
			l.text = i.player_name + " - " + str(i.score)
			$VBoxContainer.add_child(l)
