spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants

	spawn PLAYERS_HOUSE_2F,            3,  3
	spawn TWINLEAF_TOWN, 0, 0
	spawn SANDGEM_TOWN, 0, 0
	spawn N_A,                        -1, -1
