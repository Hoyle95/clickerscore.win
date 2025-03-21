extends Node

func _ready() -> void:
	SilentWolf.configure({
		"api_key": "TWSUcPXlCx4HA8uYodIx04iApxPb15cC4IiLOgjQ",
		"game_id": "ClickerScore",
		"log_level": 0
	})

	SilentWolf.configure_scores({
		"open_scene_on_close": "res://scenes/MainPage.tscn"
	})
