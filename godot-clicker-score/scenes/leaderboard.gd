extends Control

func _ready() -> void:
	loadScores()

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/mainMenu.tscn")

func loadScores() -> void:
	if SilentWolf.Scores.scores == []:
		$reload.visible = true
		var l = Label.new()
		l.text = "Please Reload"
		l.set("theme_override_colors/font_color", Vector3(0,0,0))
		l.align = 1
		$VBoxContainer.add_child(l)
	else:
		for i in SilentWolf.Scores.scores:
			var l = Label.new()
			l.text = i.player_name + " - " + str(int(i.score))
			l.set("theme_override_colors/font_color", Vector3(0,0,0))
			l.align = 1
			$VBoxContainer.add_child(l)

func _on_reload_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/leaderboard.tscn")
