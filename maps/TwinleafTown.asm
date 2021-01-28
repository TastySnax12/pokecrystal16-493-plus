	object_const_def ; object_event constants

TwinleafTown_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_TWINLEAF
	return

TwinleafTownTechnologyGuy_Script:
	jumptextfaceplayer TwinleafTownTechnologyGuy_Text

TwinleafTownPokedexLady_Script:
	jumptextfaceplayer TwinleafTownPokedexLady_Text

TwinleafTownAdventureGuy_Script:
	jumptextfaceplayer TwinleafTownAdventureGuy_Text

TwinleafTownTechnologyGuy_Text:
	text "Technology is"
	line "incredible!"

	para "Now you can play"
	line "with people all"
	cont "around the world…"

	para "Wirelessly!"
	done

TwinleafTownPokedexLady_Text:
	text "You're helping to"
	line "fill up a #DEX?"

	para "That means you'll"
	line "travel all over"
	cont "with #MON!"

	para "I'm a little bit"
	line "jealous, really!"
	done

TwinleafTownAdventureGuy_Text:
	text "Everyone goes off"
	line "on adventures."

	para "Everyone gradually"
	line "grows up…"
	done

TwinleafTownSign:
	jumptext TwinleafTownSignText

TwinleafTownPlayersHouseSign:
	jumptext TwinleafTownPlayersHouseSignText

TwinleafTownElmsLabSign:
	jumptext TwinleafTownElmsLabSignText

TwinleafTownSignText:
	text "TWINLEAF TOWN"
	line "Fresh and Free!"
	done

TwinleafTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

TwinleafTownElmsLabSignText:
	text "<RIVAL>'s House"
	done

TwinleafTown_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  5,  7, RIVALS_HOUSE_1F, 1
	warp_event 15, 13, PLAYERS_HOUSE_1F, 1
	warp_event 15,  7, TWINLEAF_YOUNG_MANS_HOUSE, 1
	warp_event  5, 13, TWINLEAF_OLD_LADYS_HOUSE, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event  9,  7, BGEVENT_READ, TwinleafTownSign
	bg_event 13, 13, BGEVENT_READ, TwinleafTownPlayersHouseSign
	bg_event  3,  7, BGEVENT_READ, TwinleafTownElmsLabSign

	db 3 ; object events
	object_event  7, 15, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TwinleafTownTechnologyGuy_Script, -1
	object_event 18,  8, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TwinleafTownPokedexLady_Script, -1
	object_event  8,  5, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TwinleafTownAdventureGuy_Script, -1
