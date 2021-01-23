; MoveEffectsPointers indexes (see data/moves/effects_pointers.asm)
	const_def
	const EFFECT_NORMAL_HIT        ; 00
	const EFFECT_SLEEP             ; 01
	const EFFECT_POISON_HIT        ; 02
	const EFFECT_LEECH_HIT         ; 03
	const EFFECT_BURN_HIT          ; 04
	const EFFECT_FREEZE_HIT        ; 05
	const EFFECT_PARALYZE_HIT      ; 06
	const EFFECT_SELFDESTRUCT      ; 07
	const EFFECT_DREAM_EATER       ; 08
	const EFFECT_MIRROR_MOVE       ; 09
	const EFFECT_ATTACK_UP         ; 0a
	const EFFECT_DEFENSE_UP        ; 0b
	const EFFECT_SPEED_UP          ; 0c ; unused
	const EFFECT_SP_ATK_UP         ; 0d
	const EFFECT_SP_DEF_UP         ; 0e ; unused
	const EFFECT_ACCURACY_UP       ; 0f ; unused
	const EFFECT_EVASION_UP        ; 10
	const EFFECT_ALWAYS_HIT        ; 11
	const EFFECT_ATTACK_DOWN       ; 12
	const EFFECT_DEFENSE_DOWN      ; 13
	const EFFECT_SPEED_DOWN        ; 14
	const EFFECT_SP_ATK_DOWN       ; 15 ; unused
	const EFFECT_SP_DEF_DOWN       ; 16 ; unused
	const EFFECT_ACCURACY_DOWN     ; 17
	const EFFECT_EVASION_DOWN      ; 18
	const EFFECT_RESET_STATS       ; 19
	const EFFECT_BIDE              ; 1a
	const EFFECT_RAMPAGE           ; 1b
	const EFFECT_FORCE_SWITCH      ; 1c
	const EFFECT_MULTI_HIT         ; 1d
	const EFFECT_CONVERSION        ; 1e
	const EFFECT_FLINCH_HIT        ; 1f
	const EFFECT_HEAL              ; 20
	const EFFECT_TOXIC             ; 21
	const EFFECT_PAY_DAY           ; 22
	const EFFECT_LIGHT_SCREEN      ; 23
	const EFFECT_TRI_ATTACK        ; 24
	const EFFECT_UNUSED_25         ; 25 ; unused
	const EFFECT_OHKO              ; 26
	const EFFECT_RAZOR_WIND        ; 27
	const EFFECT_SUPER_FANG        ; 28
	const EFFECT_STATIC_DAMAGE     ; 29
	const EFFECT_TRAP_TARGET       ; 2a
	const EFFECT_UNUSED_2B         ; 2b ; unused
	const EFFECT_DOUBLE_HIT        ; 2c
	const EFFECT_JUMP_KICK         ; 2d
	const EFFECT_MIST              ; 2e
	const EFFECT_FOCUS_ENERGY      ; 2f
	const EFFECT_RECOIL_HIT        ; 30
	const EFFECT_CONFUSE           ; 31
	const EFFECT_ATTACK_UP_2       ; 32
	const EFFECT_DEFENSE_UP_2      ; 33
	const EFFECT_SPEED_UP_2        ; 34
	const EFFECT_SP_ATK_UP_2       ; 35
	const EFFECT_SP_DEF_UP_2       ; 36
	const EFFECT_ACCURACY_UP_2     ; 37 ; unused
	const EFFECT_EVASION_UP_2      ; 38 ; unused
	const EFFECT_TRANSFORM         ; 39
	const EFFECT_ATTACK_DOWN_2     ; 3a
	const EFFECT_DEFENSE_DOWN_2    ; 3b
	const EFFECT_SPEED_DOWN_2      ; 3c
	const EFFECT_SP_ATK_DOWN_2     ; 3d ; unused
	const EFFECT_SP_DEF_DOWN_2     ; 3e ; unused
	const EFFECT_ACCURACY_DOWN_2   ; 3f ; unused
	const EFFECT_EVASION_DOWN_2    ; 40 ; unused
	const EFFECT_REFLECT           ; 41
	const EFFECT_POISON            ; 42
	const EFFECT_PARALYZE          ; 43
	const EFFECT_ATTACK_DOWN_HIT   ; 44
	const EFFECT_DEFENSE_DOWN_HIT  ; 45
	const EFFECT_SPEED_DOWN_HIT    ; 46
	const EFFECT_SP_ATK_DOWN_HIT   ; 47
	const EFFECT_SP_DEF_DOWN_HIT   ; 48
	const EFFECT_ACCURACY_DOWN_HIT ; 49
	const EFFECT_EVASION_DOWN_HIT  ; 4a ; unused
	const EFFECT_SKY_ATTACK        ; 4b
	const EFFECT_CONFUSE_HIT       ; 4c
	const EFFECT_POISON_MULTI_HIT  ; 4d
	const EFFECT_UNUSED_4E         ; 4e ; unused
	const EFFECT_SUBSTITUTE        ; 4f
	const EFFECT_HYPER_BEAM        ; 50
	const EFFECT_RAGE              ; 51
	const EFFECT_MIMIC             ; 52
	const EFFECT_METRONOME         ; 53
	const EFFECT_LEECH_SEED        ; 54
	const EFFECT_SPLASH            ; 55
	const EFFECT_DISABLE           ; 56
	const EFFECT_LEVEL_DAMAGE      ; 57
	const EFFECT_PSYWAVE           ; 58
	const EFFECT_COUNTER           ; 59
	const EFFECT_ENCORE            ; 5a
	const EFFECT_PAIN_SPLIT        ; 5b
	const EFFECT_SNORE             ; 5c
	const EFFECT_CONVERSION2       ; 5d
	const EFFECT_LOCK_ON           ; 5e
	const EFFECT_SKETCH            ; 5f
	const EFFECT_DEFROST_OPPONENT  ; 60 ; unused
	const EFFECT_SLEEP_TALK        ; 61
	const EFFECT_DESTINY_BOND      ; 62
	const EFFECT_REVERSAL          ; 63
	const EFFECT_SPITE             ; 64
	const EFFECT_FALSE_SWIPE       ; 65
	const EFFECT_HEAL_BELL         ; 66
	const EFFECT_PRIORITY_HIT      ; 67
	const EFFECT_TRIPLE_KICK       ; 68
	const EFFECT_THIEF             ; 69
	const EFFECT_MEAN_LOOK         ; 6a
	const EFFECT_NIGHTMARE         ; 6b
	const EFFECT_FLAME_WHEEL       ; 6c
	const EFFECT_CURSE             ; 6d
	const EFFECT_UNUSED_6E         ; 6e ; unused
	const EFFECT_PROTECT           ; 6f
	const EFFECT_SPIKES            ; 70
	const EFFECT_FORESIGHT         ; 71
	const EFFECT_PERISH_SONG       ; 72
	const EFFECT_SANDSTORM         ; 73
	const EFFECT_ENDURE            ; 74
	const EFFECT_ROLLOUT           ; 75
	const EFFECT_SWAGGER           ; 76
	const EFFECT_FURY_CUTTER       ; 77
	const EFFECT_ATTRACT           ; 78
	const EFFECT_RETURN            ; 79
	const EFFECT_PRESENT           ; 7a
	const EFFECT_FRUSTRATION       ; 7b
	const EFFECT_SAFEGUARD         ; 7c
	const EFFECT_SACRED_FIRE       ; 7d
	const EFFECT_MAGNITUDE         ; 7e
	const EFFECT_BATON_PASS        ; 7f
	const EFFECT_PURSUIT           ; 80
	const EFFECT_RAPID_SPIN        ; 81
	const EFFECT_UNUSED_82         ; 82 ; unused
	const EFFECT_UNUSED_83         ; 83 ; unused
	const EFFECT_MORNING_SUN       ; 84
	const EFFECT_SYNTHESIS         ; 85
	const EFFECT_MOONLIGHT         ; 86
	const EFFECT_HIDDEN_POWER      ; 87
	const EFFECT_RAIN_DANCE        ; 88
	const EFFECT_SUNNY_DAY         ; 89
	const EFFECT_DEFENSE_UP_HIT    ; 8a
	const EFFECT_ATTACK_UP_HIT     ; 8b
	const EFFECT_ALL_UP_HIT        ; 8c
	const EFFECT_FAKE_OUT          ; 8d
	const EFFECT_BELLY_DRUM        ; 8e
	const EFFECT_PSYCH_UP          ; 8f
	const EFFECT_MIRROR_COAT       ; 90
	const EFFECT_SKULL_BASH        ; 91
	const EFFECT_TWISTER           ; 92
	const EFFECT_EARTHQUAKE        ; 93
	const EFFECT_FUTURE_SIGHT      ; 94
	const EFFECT_GUST              ; 95
	const EFFECT_STOMP             ; 96
	const EFFECT_SOLARBEAM         ; 97
	const EFFECT_THUNDER           ; 98
	const EFFECT_TELEPORT          ; 99
	const EFFECT_BEAT_UP           ; 9a
	const EFFECT_FLY               ; 9b
	const EFFECT_DEFENSE_CURL      ; 9c
	; new
	const EFFECT_VITAL_THROW       ; 9d
