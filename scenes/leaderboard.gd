extends Control

func _ready():
	var sw_result: Dictionary = await SilentWolf.Scores.get_scores(0).sw_get_scores_complete
	print(sw_result)

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/mainMenu.tscn")
