	object_const_def
	const SEAFOAM_ISLANDS_B1F_BOULDER1
	const SEAFOAM_ISLANDS_B1F_BOULDER2
	const SEAFOAM_ISLANDS_B1F_BOULDER3
	const SEAFOAM_ISLANDS_B1F_BOULDER4
	const SEAFOAM_ISLANDS_B1F_BOULDER5
	const SEAFOAM_ISLANDS_B1F_POKE_BALL1
	const SEAFOAM_ISLANDS_B1F_POKE_BALL2

SeafoamIslandsB1F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsB1FHiddenIceHeal:
	hiddenitem ICE_HEAL, EVENT_SEAFOAM_ISLANDS_B1F_HIDDEN_ICE_HEAL

SeafoamIslandsB1FBoulder:
	jumpstd StrengthBoulderScript

SeafoamIslandsB1FMaxElixer:
	itemball MAX_ELIXER

SeafoamIslandsB1FIceHeal:
	itemball ICE_HEAL

SeafoamIslandsB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, SEAFOAM_ISLANDS, 4
	warp_event 41, 19, SEAFOAM_ISLANDS, 5
	warp_event 33, 19, SEAFOAM_ISLANDS_B2F, 1
	warp_event 11, 19, SEAFOAM_ISLANDS_B2F, 2
	warp_event 17, 17, SEAFOAM_ISLANDS_B2F, 3
	warp_event 19,  9, SEAFOAM_ISLANDS_B2F, 4

	def_coord_events

	def_bg_events
	bg_event 22, 14, BGEVENT_ITEM, SeafoamIslandsB1FHiddenIceHeal

	def_object_events
	object_event  9, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
	object_event 14, 20, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
	object_event 40, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
	object_event 39, 13, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
	object_event 12, 12, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
	object_event 38, 13, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, -1
	object_event 29,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB1FMaxElixer, EVENT_SEAFOAM_ISLANDS_B1F_MAX_ELIXER
	object_event 19,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB1FIceHeal, EVENT_SEAFOAM_ISLANDS_B1F_ICE_HEAL
