extends Control

export (NodePath) var combatants_node
export (PackedScene) var info_scene

var counter = 0;

var checkRaid0_first = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4"]
var checkRaid0_twelve = ["Ap1", "Ap2", "Ap3", "Bp1", "Bp2", "Bp3"]

var arr_first = []
var arr_twelve = []

var combatants_nodes

func _ready():
	return

func initialize():
	return

func addButton(text):
	var moment = Button.new()
	if counter % 7 < 4:
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


func _on_AddB3_button_up():
	addButton("B3")


func _on_AddA3_button_up():
	addButton("A3")


func _on_AddB4_button_up():
	addButton("B4")


func _on_AddA2_button_up():
	addButton("A2")


func _on_AddA1_button_up():
	addButton("A1")


func _on_AddB2_button_up():
	addButton("B2")


func _on_AddB1_button_up():
	addButton("B1")


func _on_AddA4_button_up():
	addButton("A4")


func _on_AddAp1_button_up():
	addButton("Ap1")


func _on_AddAp2_button_up():
	addButton("Ap2")


func _on_AddAp3_button_up():
	addButton("Ap3")


func _on_AddBp1_button_up():
	addButton("Bp1")


func _on_AddBp2_button_up():
	addButton("Bp2")


func _on_AddBp3_button_up():
	addButton("Bp3")
