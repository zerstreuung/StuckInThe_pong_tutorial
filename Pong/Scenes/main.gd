extends Node2D

var player_points = 0
var enemy_points = 0


func _on_enemy_scored():
	enemy_points += 1
	print_debug(enemy_points)


func _on_player_scored():
	player_points += 1
	print_debug(player_points)
