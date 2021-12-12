extends CanvasLayer

export var healing = 0.1

func _physics_process(_delta):
	if $Damage.color.a > 0:
		$Damage.color.a -= healing * _delta

func add_damage(d):
	$Damage.color.a = clamp($Damage.color.a + d, 0, 1)

func _on_Timer_timeout():
	if Global.timer > 0:
		Global.timer -= 1
		Global.update_time()
