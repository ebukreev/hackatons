extends Node2D

export(NodePath) var exploration_screen
const mindDialogue = "res://dialogue/dialogue_data/iam.json"

func _ready():
	exploration_screen = get_node(exploration_screen)
	var dialogue = load("res://dialogue/dialogue_player/DialoguePlayer.tscn").instance()
	dialogue.dialogue_file = mindDialogue
	var player = $Exploration/Grid/Player
	$Grid/Player/DialogueUI.show_dialogue(player, dialogue)
	yield(dialogue, "dialogue_finished")
	dialogue.queue_free()
