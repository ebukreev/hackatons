extends Node

signal combat_finished(winner, loser)
const Combatant = preload("res://turn_combat/combatants/Combatant.gd")
var combats_combatants 


func finish_combat(winner, loser):
	emit_signal("combat_finished", winner, loser)

func clear_combat():
	for n in $UI/Combatants/firstArr.get_children():
		n.queue_free()
	for n in $UI/Combatants/tweveArr.get_children():
		n.queue_free()
	$UI.counter = 0
