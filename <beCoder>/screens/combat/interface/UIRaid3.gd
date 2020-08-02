extends Control

export (NodePath) var combatants_node
export (PackedScene) var info_scene

var counter = 0;

var checkRaid0_first = ["A1", "A2", "A3", "A4", "A5", "A6", "B1", "B2", "B3", "B4", "B5", "B6"]
var checkRaid0_twelve = ["Ap13", "Ap46", "Bp13", "Bp46"]

var arr_first = []
var arr_twelve = []

var combatants_nodes

func _ready():
	return

func initialize():
	return

func addButton(text):
	var moment = Button.new()
	if counter % 4 < 3:
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
		print("YOU BRUTAL")
		get_parent().finish_combat(winner, loser)
	else:
		var winner = "RaidArr"
		var loser = "Player"
		print("YOU LOSER!!! AHAHAHAHAHAHAHAHAHHA")
		get_parent().finish_combat(winner, loser)



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


func _on_AddB1_button_up():
	addButton("B1")


func _on_AddB2_button_up():
	addButton("B2")


func _on_AddB3_button_up():
	addButton("B3")


func _on_AddB4_button_up():
	addButton("B4")


func _on_AddB5_button_up():
	addButton("B5")


func _on_AddB6_button_up():
	addButton("B6")


func _on_AddAp13_button_up():
	addButton("Ap13")


func _on_AddAp46_button_up():
	addButton("Ap46")


func _on_AddBp13_button_up():
	addButton("Bp13")


func _on_AddBp46_button_up():
	addButton("Bp46")
