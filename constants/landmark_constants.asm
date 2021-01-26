; Landmarks indexes (see data/maps/landmarks.asm)
	const_def

; Johto landmarks
	const LANDMARK_SPECIAL_MAP       ; 00
	const LANDMARK_TWINLEAF_TOWN     ; 01
	const LANDMARK_ROUTE_201         ; 02
	const LANDMARK_LAKE_VERITY       ; 03
	const LANDMARK_SANDGEM_TOWN      ; 04

KANTO_LANDMARK EQU const_value

; used in CaughtData
GIFT_LOCATION  EQU $7e
EVENT_LOCATION EQU $7f

; Regions
	const_def
	const JOHTO_REGION ; 0
	const KANTO_REGION ; 1
NUM_REGIONS EQU const_value
