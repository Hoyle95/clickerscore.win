extends Node

func _ready() -> void:
	#print(sw_result)
	SilentWolf.configure({
		"api_key": "TWSUcPXlCx4HA8uYodIx04iApxPb15cC4IiLOgjQ",
		"game_id": "ClickerScore",
		"log_level": 1
	})

	SilentWolf.configure_scores({
		"open_scene_on_close": "res://scenes/mainMenu.tscn"
	})
	
	var sw_result: Dictionary = await SilentWolf.Scores.get_scores(0).sw_get_scores_complete
