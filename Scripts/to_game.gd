extends Control


func _on_play_game_pressed():
	get_tree().change_scene("res://Main/test.tscn")


func _on_credits_pressed():
	pass # Replace with function body.


func _on_exit_game_pressed():
	get_tree().quit()
