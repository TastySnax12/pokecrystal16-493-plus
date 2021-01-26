	object_const_def ; object_event constants

TwinleafTown_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_TWINLEAF
	return

TwinleafTownSign:
	jumptext TwinleafTownSignText

TwinleafTownPlayersHouseSign:
	jumptext TwinleafTownPlayersHouseSignText

TwinleafTownElmsLabSign:
	jumptext TwinleafTownElmsLabSignText

TwinleafTownSignText:
	text "NEW BARK TOWN"

	para "The Town Where the"
	line "Winds of a New"
	cont "Beginning Blow"
	done

TwinleafTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

TwinleafTownElmsLabSignText:
	text "ELM #MON LAB"
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

	db 0 ; object events
