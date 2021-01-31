	object_const_def ; object_event constants
	const PLAYERSHOUSE2F_CONSOLE
	const PLAYERSHOUSE2F_DOLL_1
	const PLAYERSHOUSE2F_DOLL_2
	const PLAYERSHOUSE2F_BIG_DOLL
	const PLAYERSHOUSE2F_RIVAL

PlayersHouse2F_MapScripts:
	db 3 ; scene scripts
	scene_script .SceneInit  ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED
	scene_script .DummyScene ; SCENE_FINISHED

	db 2 ; callbacks
	callback MAPCALLBACK_NEWMAP, .InitializeRoom
	callback MAPCALLBACK_TILES, .SetSpawn

.InitializeRoom:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	checkevent EVENT_INITIALIZED_EVENTS
	iftrue .SkipInitialization
	jumpstd initializeevents
	return

.SkipInitialization:
	return

.SetSpawn:
	special ToggleMaptileDecorations
	return

.SceneInit:
	turnobject PLAYER, UP
	opentext
	writetext .testtext
	waitbutton
	closetext
	playmusic MUSIC_NEW_BARK_TOWN
	setscene SCENE_PLAYERS_HOUSE_2F_BARRY
	end

.testtext:
	text "That concludes our"
	line "special segment,"
	cont "“Ask Prof. Rowan!”"

	para "Brought to you by"
	line "JUBILIFE TV!"

	para "See you next week,"
	line "same time, same"
	cont "channel!"
	done

.DummyScene:
	end

Doll1Script:
	describedecoration DECODESC_LEFT_DOLL

Doll2Script:
	describedecoration DECODESC_RIGHT_DOLL

BigDollScript:
	describedecoration DECODESC_BIG_DOLL

GameConsoleScript:
	describedecoration DECODESC_CONSOLE

PlayersHousePosterScript:
	conditional_event EVENT_PLAYERS_ROOM_POSTER, .Script

.Script:
	describedecoration DECODESC_POSTER

PlayersHouseRadioScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftrue .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext PlayersRadioText1
	pause 45
	writetext PlayersRadioText2
	pause 45
	writetext PlayersRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext PlayersRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end

.NormalRadio:
	jumpstd radio1

.AbbreviatedRadio:
	opentext
	writetext PlayersRadioText4
	pause 45
	closetext
	end

PlayersHouseBookshelfScript:
	jumpstd picturebookshelf

PlayersHousePCScript:
	opentext
	special PlayersHousePC
	iftrue .Warp
	closetext
	end
.Warp:
	warp NONE, 0, 0
	end

PlayersRadioText1:
	text "PROF.OAK'S #MON"
	line "TALK! Please tune"
	cont "in next time!"
	done

PlayersRadioText2:
	text "#MON CHANNEL!"
	done

PlayersRadioText3:
	text "This is DJ MARY,"
	line "your co-host!"
	done

PlayersRadioText4:
	text "#MON!"
	line "#MON CHANNEL…"
	done

;;;
PlayersHouse2F_RivalEvent_1:
	settableindex 0
	sjump PlayersHouse2F_RivalEvent

PlayersHouse2F_RivalEvent_2:
	settableindex 1
	sjump PlayersHouse2F_RivalEvent

PlayersHouse2F_RivalEvent_3:
	settableindex 2
	sjump PlayersHouse2F_RivalEvent

PlayersHouse2F_RivalEvent:
	appear PLAYERSHOUSE2F_RIVAL
	applymovement PLAYERSHOUSE2F_RIVAL, PlayersHouse2F_RivalMoveDown
	showemote EMOTE_SHOCK, PLAYERSHOUSE2F_RIVAL, 15
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext PlayersHouse2F_RivalText1
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovementtable PLAYERSHOUSE2F_RIVAL, PlayersHouse2F_RivalApproachPlayer
	opentext
	writetext PlayersHouse2F_RivalText2
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYERSHOUSE2F_RIVAL, 15
	pause 15
	applymovementtable PLAYERSHOUSE2F_RIVAL, PlayersHouse2F_RivalRunToPC
	turnobject PLAYER, LEFT
	opentext
	writetext PlayersHouse2F_RivalText3
	waitbutton
	turnobject PLAYERSHOUSE2F_RIVAL, RIGHT
	writetext PlayersHouse2F_RivalText4
	waitbutton
	closetext
	applymovementtable PLAYERSHOUSE2F_RIVAL, PlayersHouse2F_RivalReturnToPlayer
	opentext
	writetext PlayersHouse2F_RivalText5
	waitbutton
	closetext
	applymovementtable PLAYERSHOUSE2F_RIVAL, PlayersHouse2F_RivalLeave
	playsound SFX_EXIT_BUILDING
	disappear PLAYERSHOUSE2F_RIVAL
	waitsfx
	special RestartMapMusic
	setscene SCENE_PLAYERS_HOUSE_2F_DONE
	end

PlayersHouse2F_RivalMoveDown:
	step DOWN
	turn_head LEFT
	step_end

PlayersHouse2F_RivalText1:
	text "<RIVAL>: There you"
	line "are!"
	done

PlayersHouse2F_RivalText2:
	text "Hey, <PLAYER>! Did"
	line "you see the TV? Of"
	cont "course you did!"

	para "PROF. ROWAN's that"
	line "really important"
	cont "guy who studies"
	cont "#MON, right?"

	para "That must mean he's"
	line "got lots and lots"
	cont "of #MON."

	para "If we ask him, I"
	line "bet he'd give us"
	cont "some #MON!"
	done

PlayersHouse2F_RivalText3:
	text "Oh, hey!"
	line "Is this a new PC?"
	done

PlayersHouse2F_RivalText4:
	text "<RIVAL>: Uhh…"
	line "Where was I?"
	done

PlayersHouse2F_RivalText5:
	text "Oh, right! We're"
	line "going to go see"
	cont "PROF. ROWAN and"
	cont "get some #MON."

	para "I'll be waiting"
	line "outside. OK,"
	cont "<PLAYER>?"

	para "If you're late, I'm"
	line "fining you"
	cont "¥10 million!"
	done

PlayersHouse2F_RivalApproachPlayer:
	dw .right
	dw .down
	dw .left

.right
	step DOWN
	step LEFT
	step_end

.down
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step_end

.left
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step_end

PlayersHouse2F_RivalRunToPC:
	dw .right
	dw .down
	dw .left

.right
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step_end

.down
	step UP
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

.left
	step DOWN
	step LEFT
	step LEFT
	step UP
	step_end

PlayersHouse2F_RivalReturnToPlayer:
	dw .right
	dw .down
	dw .left

.right
	step RIGHT
	step RIGHT
	step_end

.down
	step DOWN
	step RIGHT
	step_end

.left
	turn_head RIGHT
	step_end

PlayersHouse2F_RivalLeave:
	dw .right
	dw .down
	dw .left

.right
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step_end

.down
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

.left
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step_end

PlayersHouse2F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7,  0, PLAYERS_HOUSE_1F, 3
	warp_event  6,  0, DEBUG_ROOM, 1

	db 3 ; coord events
	coord_event  5,  2, SCENE_PLAYERS_HOUSE_2F_BARRY, PlayersHouse2F_RivalEvent_1
	coord_event  4,  3, SCENE_PLAYERS_HOUSE_2F_BARRY, PlayersHouse2F_RivalEvent_2
	coord_event  3,  2, SCENE_PLAYERS_HOUSE_2F_BARRY, PlayersHouse2F_RivalEvent_3

	db 4 ; bg events
	bg_event  2,  1, BGEVENT_UP, PlayersHousePCScript
	bg_event  3,  1, BGEVENT_READ, PlayersHouseRadioScript
	bg_event  5,  1, BGEVENT_READ, PlayersHouseBookshelfScript
	bg_event  6,  0, BGEVENT_IFSET, PlayersHousePosterScript

	db 5 ; object events
	object_event  4,  2, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameConsoleScript, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event  4,  4, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll1Script, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event  5,  4, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll2Script, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  0,  1, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigDollScript, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL
	object_event  7,  0, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PLAYERS_HOUSE_2F_RIVAL
