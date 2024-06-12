extends Node2D


func set_text(text):
	$Label.text = text

func _on_button_pressed():
	set_text("Button pressed!")
