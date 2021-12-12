extends Control


func _ready():
 	$Label.text = "You win! Your final score was " + str(Global.score)

func _on_Play_button_down():
	get_tree().change_scene("res://Game.tscn")


func _on_Quit_button_down():
	get_tree().quit()
