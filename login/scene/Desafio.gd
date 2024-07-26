extends Control

var start_time
var end_time

func _ready():
	start_time = OS.get_datetime()
	
func _on_ok_button_pressed():
	end_time = OS.get_datetime()
		get_tree().change_scene("res://login/scene/MainScene.tscn")
