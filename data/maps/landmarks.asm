landmark: MACRO
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	dbbw       0,   0, SpecialMapName
	landmark 140, 100, TwinleafTownName
	landmark 128, 100, Route201Name
	landmark 100, 100, LakeVerityName
	landmark 100,  80, SandgemTownName

SpecialMapName:   db "SPECIAL@"
TwinleafTownName: db "TWINLEAF¯TOWN@"
Route201Name:     db "ROUTE 201@"
LakeVerityName:   db "LAKE VERITY@"
SandgemTownName:  db "SANDGEM¯TOWN@"
