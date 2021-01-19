	object_const_def ; object_event constants
	const TESTMAP_EVENT1

SafariZoneBeta_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TestMap_Obj1_Script:
	opentext
	writetext .got_mew_text
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke MEW, 100
	closetext
	end

.got_mew_text
	text "Got a MEW!"
	done

SafariZoneBeta_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  9, 29, PLAYERS_HOUSE_2F, 2
	warp_event 10, 29, PLAYERS_HOUSE_2F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  7,  23, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TestMap_Obj1_Script, -1
