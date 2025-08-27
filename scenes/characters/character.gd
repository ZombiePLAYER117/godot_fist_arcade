extends CharacterBody2D

@export var health : int;
@export var damage : int; 
@export var speed : float;

func _process(delta: float) -> void:
	var direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity=direction*speed
	move_and_slide();
	#调用velocity变量，看起来godot很多变量都是已经内置好了
