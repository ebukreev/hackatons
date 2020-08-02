extends Node2D

enum CellType { MASTER, PCHELPER, RAIDARRAY }
#warning-ignore:unused_class_variable.
export(CellType) var type = CellType.PCHELPER
var active = true setget set_active

func set_active(value):
	active = value
	set_process(value)
	set_process_input(value)
