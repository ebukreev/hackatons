extends Control

export (NodePath) var combatants_node
export (PackedScene) var info_scene

var counter = 0;

var checkRaid0_first = ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8"]
var checkRaid0_twelve = ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8"]

var arr_first = []
var arr_twelve = []

var combatants_nodes

func _ready():
	return

func initialize():
	return

func _on_AddA1_button_up():
	addButton("A1")


func _on_AddA2_button_up():
	addButton("A2")


func _on_AddA3_button_up():
	addButton("A3")


func _on_AddA4_button_up():
	addButton("A4")


func _on_AddA5_button_up():
	addButton("A5")


func _on_AddA6_button_up():
	addButton("A6")


func _on_AddA7_button_up():
	addButton("A7")


func _on_AddA8_button_up():
	addButton("A8")

func addButton(text):
	var moment = Button.new()
	if counter % 2 == 0:
		moment.text = text
		$Combatants/firstArr.add_child(moment)
		arr_first.append(text)
	else:
		moment.text = text
		$Combatants/tweveArr.add_child(moment)
		arr_twelve.append(text)
	counter += 1


func _on_Check_button_up():
	if arr_first == checkRaid0_first and arr_twelve == checkRaid0_twelve:
		var winner = "Player"
		var loser = "RaidArr"
		get_parent().finish_combat(winner, loser)
	else:
		var winner = "RaidArr"
		var loser = "Player"
		get_parent().finish_combat(winner, loser)
