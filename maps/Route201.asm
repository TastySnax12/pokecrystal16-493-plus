	object_const_def ; object_event constants

Route201_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route201LedgeKid_Script:
	jumptextfaceplayer Route201LedgeKid_Text

Route201Clerk_Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_POTION_FROM_ROUTE_201_CLERK
	iftrue .got_potion
	writetext Route201Clerk_IntroText
	buttonsound
	verbosegiveitem POTION
	iffalse .no_room
	setevent EVENT_GOT_POTION_FROM_ROUTE_201_CLERK
	waitbutton
.no_room:
	closetext
	end

.got_potion:
	writetext Route201Clerk_MartExplainText
	waitbutton
	closetext
	end

Route201HealthGirl_Script:
	jumptextfaceplayer Route201HealthGirl_Text

Route201GrassGuy_Script:
	jumptextfaceplayer Route201GrassGuy_Text

Route201SandgemSign:
	jumptextsign Route201SandgemSign_Text

Route201TrainerTips:
	jumptext Route201TrainerTips_Text

Route201TwinleafSign:
	jumptextsign Route201TwinleafSign_Text

Route201LedgeKid_Text:
	text "That ledge is one"
	line "way only."

	para "Jump down for a"
	line "shortcut to"
	cont "TWINLEAF TOWN!"
	done

Route201Clerk_IntroText:
	text "Hi! I work at a"
	line "#MON MART."

	para "Did you know that"
	line "a #MON's health"
	cont "is measured by its"
	cont "Hit Points?"

	para "If a #MON runs"
	line "out of HP, it can't"
	cont "battle."

	para "If a #MON's HP"
	line "gets low, heal it"
	cont "with a POTION."

	para "Here, let me give"
	line "you a free sample!"
	done

Route201Clerk_MartExplainText:
	text "You can find a"
	line "#MON MART in"
	cont "cities and towns."
	done

Route201HealthGirl_Text:
	text "If your #MON's"
	line "HP is getting low,"
	cont "you should go to a"
	cont "#MON CENTER!"
	done

Route201GrassGuy_Text:
	text "Wild #MON lurk"
	line "in tall grass."

	para "They can burst out"
	line "at any time."

	para "Stay out of the"
	line "tall grass if you"
	cont "want to avoid"
	cont "wild #MON."
	done

Route201SandgemSign_Text:
	text "    ROUTE 201"
	line "==⇒ SANDGEM TOWN"
	done

Route201TrainerTips_Text:
	text "Trainer Tips!"

	para "Don't be shy! Talk"
	line "to anyone you see."

	para "Talking to people"
	line "gets you helpful"
	cont "information."
	done

Route201TwinleafSign_Text:
	text "  ‖ ROUTE 201"
	line "  ↓ TWINLEAF TOWN"
	done

Route201_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 3 ; bg events
	bg_event 35,  5, BGEVENT_READ, Route201SandgemSign
	bg_event 25, 11, BGEVENT_READ, Route201TrainerTips
	bg_event  7, 13, BGEVENT_READ, Route201TwinleafSign

	db 4 ; object events
	object_event 20, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route201GrassGuy_Script, -1
	object_event 29, 15, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route201HealthGirl_Script, -1
	object_event 35,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route201LedgeKid_Script, -1
	object_event 26,  4, SPRITE_CLERK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route201Clerk_Script, -1
