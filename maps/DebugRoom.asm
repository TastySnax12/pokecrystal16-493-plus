	object_const_def ; object_event constants
	const TESTMAP_EVENT1
	const TESTMAP_EVENT2
	const TESTMAP_EVENT3

DebugRoom_MapScripts:
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

TestMap_Obj2_Script:
	opentext
	callasm .asm
	closetext
	end

.asm
	xor a
	ld [wCurPartyMon], a
	ldh a, [$fff0]
	ld h, a
	ldh a, [$fff1]
	ld l, a
	call GetMoveIDFromIndex
	ld [wTempTMHM], a
	ld [wPutativeTMHMMove], a
	call GetMoveName
	ld de, wStringBuffer2
	ld hl, wStringBuffer1
	ld bc, 12
	call CopyBytes
	predef LearnMove
	ret

TestMap_Obj3_Script:
	opentext
	callasm .asm
	closetext
	end

.asm
	ldh a, [$fff0]
	ld h, a
	ldh a, [$fff1]
	ld l, a
	call GetPokemonIDFromIndex
	ld [wCurPartySpecies], a
	ldh a, [$fff2]
	ld [wCurPartyLevel], a
	ldh a, [$fff3]
	ld [wCurItem], a
	ld b, 0
	farcall GivePoke
	ret

DebugRoom_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  9, 29, PLAYERS_HOUSE_2F, 2
	warp_event 10, 29, PLAYERS_HOUSE_2F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  7,  23, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TestMap_Obj1_Script, -1
	object_event  10, 23, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TestMap_Obj2_Script, -1
	object_event  11, 23, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TestMap_Obj3_Script, -1

