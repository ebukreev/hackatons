extends Control

export (NodePath) var combatants_node
export (PackedScene) var info_scene

var counter = 0;

var checkRaid0_first = ["A1", "A2", "A3", "Ap", "B1", "B2", "Bp", "B3", "C1", "Cp", "C2", "C3", "Dp", "D1", "D2", "D3"]

var arr_first = []

var combatants_nodes

func _ready():
	return

func initialize():
	return

func addButton(text):
	var moment = Button.new()
	moment.text = text
	$Combatants/firstArr.add_child(moment)
	arr_first.append(text)
	counter += 1


func _on_Check_button_up():
	if arr_first == checkRaid0_first:
		var winner = "Player"
		var loser = "RaidArr"
		print("yep")
		get_parent().finish_combat(winner, loser)
	else:
		var winner = "RaidArr"
		var loser = "Player"
		print("nope")
		get_parent().finish_combat(winner, loser)



func _on_AddA1_button_up():
	addButton("A1")


func _on_AddA2_button_up():
	addButton("A2")


func _on_AddAp_button_up():
	addButton("Ap")


func _on_AddB1_button_up():
	addButton("B1")


func _on_AddB2_button_up():
	addButton("B2")


func _on_AddBp_button_up():
	addButton("Bp")


func _on_AddB3_button_up():
	addButton("B3")


func _on_AddC1_button_up():
	addButton("C1")


func _on_AddCp_button_up():
	addButton("Cp")


func _on_AddC2_button_up():
	addButton("C2")


func _on_AddC3_button_up():
	addButton("C3")


func _on_AddDp_button_up():
	addButton("Dp")


func _on_AddD1_button_up():
	addButton("D1")


func _on_AddD2_button_up():
	addButton("D2")


func _on_AddD3_button_up():
	addButton("D3")


func _on_AddA3_button_up():
	addButton("A3")
