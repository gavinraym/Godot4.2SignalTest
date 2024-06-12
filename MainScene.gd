extends Control

@onready var myScene = preload("res://button_scene.tscn")

func _ready():
	var instance = myScene.instantiate()
	
	# Wait to allow myScene._ready to complete
	await get_tree().create_timer(.1).timeout 
	
	instance.position = Vector2(50, 50)
	instance.set_text("This button scene was instantiated in the Main Scene.")
	add_child(instance)
