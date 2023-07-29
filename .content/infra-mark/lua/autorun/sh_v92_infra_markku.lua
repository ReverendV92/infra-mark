
AddCSLuaFile()

-------------------------------------------------------
-------------------------------------------------------
--	INFRA Markku 'Mark' Siltanen
-------------------------------------------------------
-------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	Players
-------------------------------------------------------
-------------------------------------------------------

player_manager.AddValidModel("Mark Siltanen", "models/jessev92/characters/highvis/mark/player.mdl" )
player_manager.AddValidHands( "Mark Siltanen", "models/jessev92/characters/highvis/arms.mdl", 0, "00000000" )
list.Set( "PlayerOptionsAnimations", "Mark Siltanen", { "menu_combine" , "run_all_02" , "pose_standing_01" , "pose_standing_02"  } )
util.PrecacheModel(	"models/jessev92/characters/highvis/mark/player.mdl"	)
util.PrecacheModel(	"models/jessev92/characters/highvis/arms.mdl"	)

-------------------------------------------------------
-------------------------------------------------------
--	NPCs
-------------------------------------------------------
-------------------------------------------------------

local Category = "NPCG: Other"
list.Set( "NPC" , "npcgs_marksiltanen_f" , { ["Name"] = "Mark Siltanen" , ["Class"] = "npcgs_marksiltanen_f" , ["Category"] = Category } ) 
list.Set( "NPC" , "npcgs_marksiltanen_e" , { ["Name"] = "Mark Siltanen Enemy" , ["Class"] = "npcgs_marksiltanen_e" , ["Category"] = Category } ) 

-------------------------------------------------------
-------------------------------------------------------
--	Auto-Download
-------------------------------------------------------
-------------------------------------------------------

if SERVER then

	--	Add to client download
	resource.AddWorkshop( "939916356" ) -- Mark

end

-------------------------------------------------------
-------------------------------------------------------
--	TFA VOX PLUGIN
-------------------------------------------------------
-------------------------------------------------------

if TFAVOX_Models then

	print( "TFA VOX - Mark" )

	local model = "models/jessev92/characters/highvis/mark/player.mdl"
	local markSnd = "infra/vo/mark/"
	local footSnd = "infra/player/footsteps/"
	local tmptbl = string.Split(model,"/")
	local mdlprefix = tmptbl[#tmptbl] or model
	mdlprefix = string.Replace(mdlprefix,".mdl","")

	TFAVOX_Models[model] = {
		['main'] = {--subtable id
			['heal'] = {--event id
				['delay']= nil,--delay ( nil to autocalc )
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"heal", 
					{ 
						markSnd .. "a_little_pick_me_up_1.wav" , 
						markSnd .. "a_little_pick_me_up_2.wav" , 
						markSnd .. "a_little_pick_me_up_3.wav" , 
						markSnd .. "a_little_pick_me_up_4.wav" , 
						markSnd .. "a_little_pick_me_up_5.wav" , 
						markSnd .. "a_little_refreshment_1.wav" , 
						markSnd .. "a_little_refreshment_2.wav" , 
						markSnd .. "a_little_refreshment_3.wav" , 
						markSnd .. "a_little_refreshment_4.wav" 
					} 
				)
			},
			['healmax'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound(
					mdlprefix, 
					"healmax", 
					{ 
						markSnd .. "monologue/cant_carry_any_more_of_these_1.wav"
					} 
				)
			},
			['crithit'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"crithit", 
					{ 
						markSnd .. "cough_1.wav" , 
						markSnd .. "cough_2.wav" , 
						markSnd .. "cough_3.wav" , 
						markSnd .. "cough_4.wav" , 
						markSnd .. "cough_5.wav" , 
						markSnd .. "cough_6.wav" , 
						markSnd .. "cough_7.wav" , 
						markSnd .. "cough_8.wav"
					} 
				)
			},
			['crithealth'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"crithealth", 
					{ 
						markSnd .. "grunt_1.wav" , 
						markSnd .. "grunt_2.wav" , 
						markSnd .. "grunt_3.wav" , 
						markSnd .. "grunt_4.wav" , 
						markSnd .. "grunt_5.wav" , 
						markSnd .. "grunt_6.wav" , 
						markSnd .. "grunt_7.wav" , 
						markSnd .. "grunt_8.wav"
					} 
				)
			},
			['death'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"death", 
					{ 
						markSnd .. "grunt_1.wav" , 
						markSnd .. "grunt_2.wav" , 
						markSnd .. "grunt_3.wav" , 
						markSnd .. "grunt_4.wav" , 
						markSnd .. "grunt_5.wav" , 
						markSnd .. "grunt_6.wav" , 
						markSnd .. "grunt_7.wav" , 
						markSnd .. "grunt_8.wav"
					} 
				)
			},
			['spawn'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"spawn", 
					{ 
						markSnd .. "definitely_not_getting_paid_enough_1.wav" , 
						markSnd .. "definitely_not_getting_paid_enough_2.wav" , 
						markSnd .. "definitely_not_getting_paid_enough_3.wav" , 
						markSnd .. "definitely_not_getting_paid_enough_4.wav" , 
						markSnd .. "definitely_not_getting_paid_enough_5.wav" , 
						markSnd .. "definitely_not_getting_paid_enough_6.wav" , 
						markSnd .. "definitely_not_getting_paid_enough_7.wav"
					} 
				)
			},
			['pickup'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"spawn", 
					{ 
						markSnd .. "dont_mind_if_i_do_1.wav" , 
						markSnd .. "dont_mind_if_i_do_2.wav" , 
						markSnd .. "dont_mind_if_i_do_3.wav" , 
						markSnd .. "dont_mind_if_i_do_4.wav" ,
						markSnd .. "just_what_i_needed_1.wav" ,
						markSnd .. "just_what_i_needed_2.wav" ,
						markSnd .. "just_what_i_needed_3.wav" ,
						markSnd .. "just_what_i_needed_4.wav" ,
					} 
				)
			},
			['reload'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"reload", 
					{ 
						markSnd .. "definitely_not_getting_paid_enough_1.wav" , 
						markSnd .. "definitely_not_getting_paid_enough_2.wav" , 
						markSnd .. "definitely_not_getting_paid_enough_3.wav" , 
						markSnd .. "definitely_not_getting_paid_enough_4.wav" , 
						markSnd .. "definitely_not_getting_paid_enough_5.wav" , 
						markSnd .. "definitely_not_getting_paid_enough_6.wav" , 
						markSnd .. "definitely_not_getting_paid_enough_7.wav"
					} 
				)
			},
			['noammo'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"noammo", 
					{ 
						markSnd .. "monologue/thats_not_good_1.wav" , 
					} 
				)
			},
			['fall'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"fall", 
					{ 
						markSnd .. "ooff_1.wav" ,
						markSnd .. "ooff_2.wav" ,
						markSnd .. "ooff_3.wav" ,
						markSnd .. "ooff_4.wav" ,
						markSnd .. "ooff_5.wav" ,
						markSnd .. "ooff_6.wav" ,
					} 
				)
			},
			['jump'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"jump", 
					{ 
						markSnd .. "grunt_1.wav" , 
						markSnd .. "grunt_2.wav" , 
						markSnd .. "grunt_3.wav" , 
						markSnd .. "grunt_4.wav" , 
						markSnd .. "grunt_5.wav" , 
						markSnd .. "grunt_6.wav" , 
						markSnd .. "grunt_7.wav" , 
						markSnd .. "grunt_8.wav"
					} 
				)
			},
			[ 'step' ] = {
				[ 'delay' ] = nil ,
				[ 'sound' ] = TFAVOX_GenerateSound( 
					mdlprefix ,
					"step" , 
					{ 
						footSnd .. "dirt1.wav" ,
						footSnd .. "dirt2.wav" ,
						footSnd .. "dirt3.wav" ,
						footSnd .. "dirt4.wav" ,
					} 
				)
			}
		},
		['murder'] = {
			['combine'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdcomb", 
					{ 
						markSnd .. "sorry_1.wav" , 
						markSnd .. "sorry_2.wav" , 
						markSnd .. "sorry_3.wav" , 
						markSnd .. "sorry_4.wav" , 
						markSnd .. "sorry_5.wav"
					} 
				)
			},
			['cp'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdcp", 
					{ 
						markSnd .. "sorry_1.wav" , 
						markSnd .. "sorry_2.wav" , 
						markSnd .. "sorry_3.wav" , 
						markSnd .. "sorry_4.wav" , 
						markSnd .. "sorry_5.wav"
					} 
				)
			},
			['zombie'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdzomb", 
					{ 
						markSnd .. "sorry_1.wav" , 
						markSnd .. "sorry_2.wav" , 
						markSnd .. "sorry_3.wav" , 
						markSnd .. "sorry_4.wav" , 
						markSnd .. "sorry_5.wav"
					} 
				)
			},
			['headcrab'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdhc", 
					{ 
						markSnd .. "sorry_1.wav" , 
						markSnd .. "sorry_2.wav" , 
						markSnd .. "sorry_3.wav" , 
						markSnd .. "sorry_4.wav" , 
						markSnd .. "sorry_5.wav"
					} 
				)
			},
			['manhack'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdmh", 
					{ 
						markSnd .. "sorry_1.wav" , 
						markSnd .. "sorry_2.wav" , 
						markSnd .. "sorry_3.wav" , 
						markSnd .. "sorry_4.wav" , 
						markSnd .. "sorry_5.wav"
					} 
				)
			},
			['scanner'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdsca", 
					{ 
						markSnd .. "sorry_1.wav" , 
						markSnd .. "sorry_2.wav" , 
						markSnd .. "sorry_3.wav" , 
						markSnd .. "sorry_4.wav" , 
						markSnd .. "sorry_5.wav"
					} 
				)
			},
			['sniper'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdsni", 
					{ 
						markSnd .. "sorry_1.wav" , 
						markSnd .. "sorry_2.wav" , 
						markSnd .. "sorry_3.wav" , 
						markSnd .. "sorry_4.wav" , 
						markSnd .. "sorry_5.wav"
					} 
				)
			},
			['turret'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdtur", 
					{ 
						markSnd .. "sorry_1.wav" , 
						markSnd .. "sorry_2.wav" , 
						markSnd .. "sorry_3.wav" , 
						markSnd .. "sorry_4.wav" , 
						markSnd .. "sorry_5.wav"
					} 
				)
			},
			['ally'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdally", 
					{ 
						markSnd .. "sorry_1.wav" , 
						markSnd .. "sorry_2.wav" , 
						markSnd .. "sorry_3.wav" , 
						markSnd .. "sorry_4.wav" , 
						markSnd .. "sorry_5.wav"
					} 
				)
			},
			['generic'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdgener", 
					{ 
						markSnd .. "sorry_1.wav" , 
						markSnd .. "sorry_2.wav" , 
						markSnd .. "sorry_3.wav" , 
						markSnd .. "sorry_4.wav" , 
						markSnd .. "sorry_5.wav"
					} 
				)
			},
		},
		['spot'] = {
			['combine'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"spotcomb", 
					{ 
						markSnd .. "monologue/thats_not_good_1.wav"
					} 
				)
			},
			['cp'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"spotcp", 
					{ 
						markSnd .. "monologue/thats_not_good_1.wav"
					} 
				)
			},
			['zombie'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"spotzom", 
					{ 
						markSnd .. "monologue/thats_not_good_1.wav"
					} 
				)
			},
			['headcrab'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"spothc", 
					{ 
						markSnd .. "monologue/thats_not_good_1.wav"
					} 
				)
			},
			['manhack'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"spotmh", 
					{ 
						markSnd .. "monologue/thats_not_good_1.wav" ,
						markSnd .. "monologue/reserve2/shit_1.wav" ,
					} 
				)
			},
			['scanner'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdsca", 
					{ 
						markSnd .. "monologue/thats_not_good_1.wav"
					} 
				)
			},
			['sniper'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdsni", 
					{ 
						markSnd .. "monologue/thats_not_good_1.wav"
					} 
				)
			},
			['turret'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdtur", 
					{ 
						markSnd .. "monologue/thats_not_good_1.wav"
					} 
				)
			},
			['ally'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdally", 
					{ 
						markSnd .. "monologue/thats_not_good_1.wav"
					} 
				)
			},
			['generic'] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"murdgener", 
					{ 
						markSnd .. "monologue/thats_not_good_1.wav"
					} 
				)
			},
		},
		['taunt'] = {
			[ACT_GMOD_GESTURE_AGREE] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_GMOD_GESTURE_AGREE", 
					{ 
						markSnd .. "alright_1.wav" ,
						markSnd .. "alright_2.wav" ,
						markSnd .. "alright_3.wav" ,
						markSnd .. "alright_4.wav" ,
						markSnd .. "alright_5.wav" ,
						markSnd .. "alright_if_you_say_so_1.wav" ,
						markSnd .. "alright_if_you_say_so_2.wav" ,
						markSnd .. "alright_if_you_say_so_3.wav" ,
						markSnd .. "alright_if_you_say_so_4.wav" ,
					} 
				)
			},
			[ACT_GMOD_GESTURE_BECON] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_GMOD_GESTURE_BECON", 
					{ 
						markSnd .. "alright_1.wav" ,
						markSnd .. "alright_2.wav" ,
						markSnd .. "alright_3.wav" ,
						markSnd .. "alright_4.wav" ,
						markSnd .. "alright_5.wav" ,
						markSnd .. "alright_if_you_say_so_1.wav" ,
						markSnd .. "alright_if_you_say_so_2.wav" ,
						markSnd .. "alright_if_you_say_so_3.wav" ,
						markSnd .. "alright_if_you_say_so_4.wav" ,
					} 
				)
			},
			[ACT_GMOD_GESTURE_BOW] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_GMOD_GESTURE_BOW", 
					{ 
						markSnd .. "hello_1.wav" ,
						markSnd .. "hello_2.wav" ,
						markSnd .. "hello_3.wav" ,
						markSnd .. "hello_4.wav" ,
						markSnd .. "hello_5.wav" ,
						markSnd .. "hello_6.wav" ,
						markSnd .. "hey_1.wav" ,
						markSnd .. "hey_2.wav" ,
						markSnd .. "hey_3.wav" ,
						markSnd .. "hey_4.wav" ,
						markSnd .. "hey_5.wav" ,
						markSnd .. "hey_6.wav" ,
					} 
				)
			},
			[ACT_GMOD_GESTURE_DISAGREE] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_GMOD_GESTURE_DISAGREE", 
					{ 
						markSnd .. "how_am_i_supposed_to_1.wav" ,
						markSnd .. "how_am_i_supposed_to_2.wav" ,
						markSnd .. "how_am_i_supposed_to_3.wav" ,
						markSnd .. "how_am_i_supposed_to_4.wav" ,
						markSnd .. "how_am_i_supposed_to_5.wav" ,
						markSnd .. "how_am_i_supposed_to_6.wav" ,
					} 
				)
			},
			[ACT_GMOD_TAUNT_SALUTE] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_GMOD_TAUNT_SALUTE", 
					{ 
						markSnd .. "hello_1.wav" ,
						markSnd .. "hello_2.wav" ,
						markSnd .. "hello_3.wav" ,
						markSnd .. "hello_4.wav" ,
						markSnd .. "hello_5.wav" ,
						markSnd .. "hello_6.wav" ,
						markSnd .. "hey_1.wav" ,
						markSnd .. "hey_2.wav" ,
						markSnd .. "hey_3.wav" ,
						markSnd .. "hey_4.wav" ,
						markSnd .. "hey_5.wav" ,
						markSnd .. "hey_6.wav" ,
					} 
				)
			},
			[ACT_GMOD_GESTURE_WAVE] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_GMOD_GESTURE_WAVE", 
					{ 
						markSnd .. "hello_1.wav" ,
						markSnd .. "hello_2.wav" ,
						markSnd .. "hello_3.wav" ,
						markSnd .. "hello_4.wav" ,
						markSnd .. "hello_5.wav" ,
						markSnd .. "hello_6.wav" ,
						markSnd .. "hey_1.wav" ,
						markSnd .. "hey_2.wav" ,
						markSnd .. "hey_3.wav" ,
						markSnd .. "hey_4.wav" ,
						markSnd .. "hey_5.wav" ,
						markSnd .. "hey_6.wav" ,
					} 
				)
			},
			[ACT_GMOD_TAUNT_PERSISTENCE] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_GMOD_TAUNT_PERSISTENCE", 
					{ 
						markSnd .. "hello_1.wav" ,
						markSnd .. "hello_2.wav" ,
						markSnd .. "hello_3.wav" ,
						markSnd .. "hello_4.wav" ,
						markSnd .. "hello_5.wav" ,
						markSnd .. "hello_6.wav" ,
						markSnd .. "hey_1.wav" ,
						markSnd .. "hey_2.wav" ,
						markSnd .. "hey_3.wav" ,
						markSnd .. "hey_4.wav" ,
						markSnd .. "hey_5.wav" ,
						markSnd .. "hey_6.wav" ,
					} 
				)
			},
			[ACT_GMOD_TAUNT_MUSCLE] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_GMOD_TAUNT_MUSCLE", 
					{ 
						markSnd .. "hello_1.wav" ,
						markSnd .. "hello_2.wav" ,
						markSnd .. "hello_3.wav" ,
						markSnd .. "hello_4.wav" ,
						markSnd .. "hello_5.wav" ,
						markSnd .. "hello_6.wav" ,
						markSnd .. "hey_1.wav" ,
						markSnd .. "hey_2.wav" ,
						markSnd .. "hey_3.wav" ,
						markSnd .. "hey_4.wav" ,
						markSnd .. "hey_5.wav" ,
						markSnd .. "hey_6.wav" ,
					} 
				)
			},
			[ACT_GMOD_TAUNT_LAUGH] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_GMOD_TAUNT_LAUGH", 
					{ 
						markSnd .. "hello_1.wav" ,
						markSnd .. "hello_2.wav" ,
						markSnd .. "hello_3.wav" ,
						markSnd .. "hello_4.wav" ,
						markSnd .. "hello_5.wav" ,
						markSnd .. "hello_6.wav" ,
						markSnd .. "hey_1.wav" ,
						markSnd .. "hey_2.wav" ,
						markSnd .. "hey_3.wav" ,
						markSnd .. "hey_4.wav" ,
						markSnd .. "hey_5.wav" ,
						markSnd .. "hey_6.wav" ,
					} 
				)
			},
			[ACT_GMOD_GESTURE_POINT] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_GMOD_GESTURE_POINT", 
					{ 
						markSnd .. "hello_1.wav" ,
						markSnd .. "hello_2.wav" ,
						markSnd .. "hello_3.wav" ,
						markSnd .. "hello_4.wav" ,
						markSnd .. "hello_5.wav" ,
						markSnd .. "hello_6.wav" ,
						markSnd .. "hey_1.wav" ,
						markSnd .. "hey_2.wav" ,
						markSnd .. "hey_3.wav" ,
						markSnd .. "hey_4.wav" ,
						markSnd .. "hey_5.wav" ,
						markSnd .. "hey_6.wav" ,
					} 
				)
			},
			[ACT_GMOD_TAUNT_CHEER] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_GMOD_TAUNT_CHEER", 
					{ 
						markSnd .. "hello_1.wav" ,
						markSnd .. "hello_2.wav" ,
						markSnd .. "hello_3.wav" ,
						markSnd .. "hello_4.wav" ,
						markSnd .. "hello_5.wav" ,
						markSnd .. "hello_6.wav" ,
						markSnd .. "hey_1.wav" ,
						markSnd .. "hey_2.wav" ,
						markSnd .. "hey_3.wav" ,
						markSnd .. "hey_4.wav" ,
						markSnd .. "hey_5.wav" ,
						markSnd .. "hey_6.wav" ,
					} 
				)
			},
			[ACT_SIGNAL_FORWARD] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_SIGNAL_FORWARD", 
					{ 
						markSnd .. "hello_1.wav" ,
						markSnd .. "hello_2.wav" ,
						markSnd .. "hello_3.wav" ,
						markSnd .. "hello_4.wav" ,
						markSnd .. "hello_5.wav" ,
						markSnd .. "hello_6.wav" ,
						markSnd .. "hey_1.wav" ,
						markSnd .. "hey_2.wav" ,
						markSnd .. "hey_3.wav" ,
						markSnd .. "hey_4.wav" ,
						markSnd .. "hey_5.wav" ,
						markSnd .. "hey_6.wav" ,
					} 
				)
			},
			[ACT_SIGNAL_GROUP] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_SIGNAL_GROUP", 
					{ 
						markSnd .. "hello_1.wav" ,
						markSnd .. "hello_2.wav" ,
						markSnd .. "hello_3.wav" ,
						markSnd .. "hello_4.wav" ,
						markSnd .. "hello_5.wav" ,
						markSnd .. "hello_6.wav" ,
						markSnd .. "hey_1.wav" ,
						markSnd .. "hey_2.wav" ,
						markSnd .. "hey_3.wav" ,
						markSnd .. "hey_4.wav" ,
						markSnd .. "hey_5.wav" ,
						markSnd .. "hey_6.wav" ,
					} 
				)
			},
			[ACT_SIGNAL_HALT] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"ACT_SIGNAL_HALT", 
					{ 
						markSnd .. "hello_1.wav" ,
						markSnd .. "hello_2.wav" ,
						markSnd .. "hello_3.wav" ,
						markSnd .. "hello_4.wav" ,
						markSnd .. "hello_5.wav" ,
						markSnd .. "hello_6.wav" ,
						markSnd .. "hey_1.wav" ,
						markSnd .. "hey_2.wav" ,
						markSnd .. "hey_3.wav" ,
						markSnd .. "hey_4.wav" ,
						markSnd .. "hey_5.wav" ,
						markSnd .. "hey_6.wav" ,
					} 
				)
			},
		},
		['damage'] = {
			[HITGROUP_GENERIC] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"HITGROUP_GENERIC", 
					{ 
						markSnd .. "ooff_1.wav" ,
						markSnd .. "ooff_2.wav" ,
						markSnd .. "ooff_3.wav" ,
						markSnd .. "ooff_4.wav" ,
						markSnd .. "ooff_5.wav" ,
						markSnd .. "ooff_6.wav" ,
					} 
				)
			},
			[HITGROUP_HEAD] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"HITGROUP_HEAD", 
					{ 
						markSnd .. "ooff_1.wav" ,
						markSnd .. "ooff_2.wav" ,
						markSnd .. "ooff_3.wav" ,
						markSnd .. "ooff_4.wav" ,
						markSnd .. "ooff_5.wav" ,
						markSnd .. "ooff_6.wav" ,
					} 
				)
			},
			[HITGROUP_CHEST] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"HITGROUP_CHEST", 
					{ 
						markSnd .. "ooff_1.wav" ,
						markSnd .. "ooff_2.wav" ,
						markSnd .. "ooff_3.wav" ,
						markSnd .. "ooff_4.wav" ,
						markSnd .. "ooff_5.wav" ,
						markSnd .. "ooff_6.wav" ,
					} 
				)
			},
			[HITGROUP_STOMACH] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"HITGROUP_STOMACH", 
					{ 
						markSnd .. "ooff_1.wav" ,
						markSnd .. "ooff_2.wav" ,
						markSnd .. "ooff_3.wav" ,
						markSnd .. "ooff_4.wav" ,
						markSnd .. "ooff_5.wav" ,
						markSnd .. "ooff_6.wav" ,
					} 
				)
			},
			[HITGROUP_LEFTARM] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"HITGROUP_LEFTARM", 
					{ 
						markSnd .. "ooff_1.wav" ,
						markSnd .. "ooff_2.wav" ,
						markSnd .. "ooff_3.wav" ,
						markSnd .. "ooff_4.wav" ,
						markSnd .. "ooff_5.wav" ,
						markSnd .. "ooff_6.wav" ,
					} 
				)
			},
			[HITGROUP_RIGHTARM] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"HITGROUP_RIGHTARM", 
					{ 
						markSnd .. "ooff_1.wav" ,
						markSnd .. "ooff_2.wav" ,
						markSnd .. "ooff_3.wav" ,
						markSnd .. "ooff_4.wav" ,
						markSnd .. "ooff_5.wav" ,
						markSnd .. "ooff_6.wav" ,
					} 
				)
			},
			[HITGROUP_LEFTLEG] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"HITGROUP_LEFTLEG", 
					{ 
						markSnd .. "ooff_1.wav" ,
						markSnd .. "ooff_2.wav" ,
						markSnd .. "ooff_3.wav" ,
						markSnd .. "ooff_4.wav" ,
						markSnd .. "ooff_5.wav" ,
						markSnd .. "ooff_6.wav" ,
					} 
				)
			},
			[HITGROUP_RIGHTLEG] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"HITGROUP_RIGHTLEG", 
					{ 
						markSnd .. "ooff_1.wav" ,
						markSnd .. "ooff_2.wav" ,
						markSnd .. "ooff_3.wav" ,
						markSnd .. "ooff_4.wav" ,
						markSnd .. "ooff_5.wav" ,
						markSnd .. "ooff_6.wav" ,
					} 
				)
			},
			[HITGROUP_GEAR] = {
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"HITGROUP_GEAR", 
					{ 
						markSnd .. "ooff_1.wav" ,
						markSnd .. "ooff_2.wav" ,
						markSnd .. "ooff_3.wav" ,
						markSnd .. "ooff_4.wav" ,
						markSnd .. "ooff_5.wav" ,
						markSnd .. "ooff_6.wav" ,
					} 
				)
			},
		},
		['callouts'] = {
			['agree'] = { -- callout classname in these quotes
				['name'] = "Agree",--Callout friendly name ( what you see in the wheel )
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"Wheel_Agree", 
					{ 
						markSnd .. "alright_1.wav" ,
						markSnd .. "alright_2.wav" ,
						markSnd .. "alright_3.wav" ,
						markSnd .. "alright_4.wav" ,
						markSnd .. "alright_5.wav" ,
						markSnd .. "alright_if_you_say_so_1.wav" ,
						markSnd .. "alright_if_you_say_so_2.wav" ,
						markSnd .. "alright_if_you_say_so_3.wav" ,
						markSnd .. "alright_if_you_say_so_4.wav" ,
					} 
				)
			},
			['disagree'] = { -- callout classname in these quotes
				['name'] = "Disagree",--Callout friendly name ( what you see in the wheel )
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"Wheel_Disagree", 
					{ 
						markSnd .. "how_am_i_supposed_to_1.wav" ,
						markSnd .. "how_am_i_supposed_to_2.wav" ,
						markSnd .. "how_am_i_supposed_to_3.wav" ,
						markSnd .. "how_am_i_supposed_to_4.wav" ,
						markSnd .. "how_am_i_supposed_to_5.wav" ,
						markSnd .. "how_am_i_supposed_to_6.wav" ,
						markSnd .. "monologue/reserve2/oh_come_on_1.wav" ,
						markSnd .. "monologue/reserve3/probably.wav" ,
					} 
				)
			},
			['whatinthefuck'] = { -- callout classname in these quotes
				['name'] = "What the Fuck?",--Callout friendly name ( what you see in the wheel )
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"Wheel_WTF", 
					{ 
						markSnd .. "what_in_the_fuck_1.wav" ,
						markSnd .. "what_in_the_fuck_2.wav" ,
						markSnd .. "what_in_the_fuck_3.wav" ,
						markSnd .. "what_in_the_fuck_4.wav" ,
						markSnd .. "what_in_the_fuck_5.wav" ,
						markSnd .. "monologue/furnace/whatsgoingon.wav" ,
						markSnd .. "monologue/office/what_the_hell_1.wav" ,
						markSnd .. "monologue/reserve2/what_1.wav" ,
						markSnd .. "monologue/reserve3/what.wav" ,
						markSnd .. "monologue/sewer/steamtrap.wav" ,
						markSnd .. "monologue/sewer/whatishappening.wav" ,
						markSnd .. "monologue/sewer/whatthe.wav" ,
						markSnd .. "monologue/tunnel1/fuck.wav" ,
					} 
				)
			},
			['whatdidyoudo'] = { -- callout classname in these quotes
				['name'] = "What Did You Do?",--Callout friendly name ( what you see in the wheel )
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"Wheel_WhatdYoudo", 
					{ 
						markSnd .. "what_did_you_do_1.wav" ,
						markSnd .. "what_did_you_do_2.wav" ,
						markSnd .. "what_did_you_do_3.wav" ,
						markSnd .. "what_did_you_do_4.wav" ,
						markSnd .. "what_did_you_do_5.wav" ,
						markSnd .. "what_did_you_do_6.wav" ,
					} 
				)
			},
			['weird'] = { -- callout classname in these quotes
				['name'] = "Well That's Weird",--Callout friendly name ( what you see in the wheel )
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"Wheel_ThatsWeird", 
					{ 
						markSnd .. "well_thats_weird_1.wav" ,
						markSnd .. "well_thats_weird_2.wav" ,
						markSnd .. "well_thats_weird_3.wav" ,
						markSnd .. "well_thats_weird_4.wav" ,
						markSnd .. "well_thats_weird_5.wav" ,
						markSnd .. "well_thats_weird_6.wav" ,
						markSnd .. "well_thats_weird_7.wav" ,
						markSnd .. "well_thats_weird_8.wav" ,
					} 
				)
			},
			['maniac'] = { -- callout classname in these quotes
				['name'] = "What a Maniac",--Callout friendly name ( what you see in the wheel )
				['delay']= nil,
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"Wheel_Maniac", 
					{ 
						markSnd .. "what_a_fucking_maniac_1.wav" ,
						markSnd .. "what_a_fucking_maniac_2.wav" ,
						markSnd .. "what_a_fucking_maniac_3.wav" ,
						markSnd .. "what_a_fucking_maniac_4.wav" ,
					} 
				)
			},
			[ 'corpse' ] = { -- callout classname in these quotes
				[ 'name' ] = "Is that a Corpse?",--Callout friendly name ( what you see in the wheel )
				['delay' ]= nil,
				[ 'sound' ] = TFAVOX_GenerateSound( 
					mdlprefix ,
					"Wheel_Corpse" , 
					{ 
						markSnd .. "monologue/reserve3/corpse.wav" ,
					} 
				)
			},
			[ 'smellsLikeDied' ] = { -- callout classname in these quotes
				[ 'name' ] = "Smells Like Death",--Callout friendly name ( what you see in the wheel )
				['delay' ]= nil,
				[ 'sound' ] = TFAVOX_GenerateSound( 
					mdlprefix ,
					"Wheel_SmellsLikeDeath" , 
					{ 
						markSnd .. "monologue/reserve3/smell.wav" ,
					} 
				)
			},
			[ 'letssee' ] = { -- callout classname in these quotes
				[ 'name' ] = "Let's See",--Callout friendly name ( what you see in the wheel )
				['delay' ]= nil,
				[ 'sound' ] = TFAVOX_GenerateSound( 
					mdlprefix ,
					"Wheel_LetsSee" , 
					{ 
						markSnd .. "monologue/reserve3/letssee.wav" ,
						markSnd .. "monologue/tower/letssee.wav" ,
					} 
				)
			},
			[ 'careful' ] = { -- callout classname in these quotes
				[ 'name' ] = "Careful",--Callout friendly name ( what you see in the wheel )
				['delay' ]= nil,
				[ 'sound' ] = TFAVOX_GenerateSound( 
					mdlprefix ,
					"Wheel_Careful" , 
					{ 
						markSnd .. "monologue/reserve3/tree.wav" ,
						markSnd .. "monologue/reserve2/i_better_watch_my_step_1.wav" ,
					} 
				)
			},
			[ 'locked' ] = { -- callout classname in these quotes
				[ 'name' ] = "Locked",--Callout friendly name ( what you see in the wheel )
				['delay' ]= nil,
				[ 'sound' ] = TFAVOX_GenerateSound( 
					mdlprefix ,
					"Wheel_Locked" , 
					{ 
						markSnd .. "monologue/reserve3/locked.wav" ,
						markSnd .. "monologue/reserve3/open.wav" ,
						markSnd .. "monologue/sewer/blocked.wav" ,
						markSnd .. "monologue/sewer/locked.wav" ,
					} 
				)
			},
			[ 'convenient' ] = { -- callout classname in these quotes
				[ 'name' ] = "Convenient",--Callout friendly name ( what you see in the wheel )
				['delay' ]= nil,
				[ 'sound' ] = TFAVOX_GenerateSound( 
					mdlprefix ,
					"Wheel_Convenient" , 
					{ 
						markSnd .. "monologue/sewer/convenient.wav" ,
					} 
				)
			},
			[ 'thatsnew' ] = { -- callout classname in these quotes
				[ 'name' ] = "Wow",--Callout friendly name ( what you see in the wheel )
				['delay' ]= nil,
				[ 'sound' ] = TFAVOX_GenerateSound( 
					mdlprefix ,
					"Wheel_ThatsNew" , 
					{ 
						markSnd .. "monologue/tower/wow.wav" ,
						markSnd .. "monologue/tower/thatsnew.wav" ,
						markSnd .. "monologue/tunnel3/collapsedtunnelcameratarget.wav" ,
						markSnd .. "monologue/watertreatment/whoa.wav" ,
					} 
				)
			},
			[ 'didthetrick' ] = { -- callout classname in these quotes
				[ 'name' ] = "That Did It",--Callout friendly name ( what you see in the wheel )
				['delay' ]= nil,
				[ 'sound' ] = TFAVOX_GenerateSound( 
					mdlprefix ,
					"Wheel_DidTheTrick" , 
					{ 
						markSnd .. "monologue/tower/thatdidthetric.wav" ,
					} 
				)
			},
			[ 'tooclose' ] = { -- callout classname in these quotes
				[ 'name' ] = "Too Close",--Callout friendly name ( what you see in the wheel )
				['delay' ]= nil,
				[ 'sound' ] = TFAVOX_GenerateSound( 
					mdlprefix ,
					"Wheel_TooClose" , 
					{ 
						markSnd .. "monologue/tunnel1/survive.wav" ,
					} 
				)
			},

		},
		['external'] = { --Completely optional, allows you to integrate with external mods
			['bash'] = { -- Used by TFA Base
				['sound'] = TFAVOX_GenerateSound( 
					mdlprefix, 
					"Bash", 
					{ 
						markSnd .. "ooff_1.wav" ,
						markSnd .. "ooff_2.wav" ,
						markSnd .. "ooff_3.wav" ,
						markSnd .. "ooff_4.wav" ,
						markSnd .. "ooff_5.wav" ,
						markSnd .. "ooff_6.wav" ,
					} 
				)
			},
		}
	}

end

sound.Add( { ["name"] = "INFRA.VO.Mark.FBD_Tripped_A",
	["channel"] = CHAN_VOICE ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"infra/vo/mark/oh_no_1.wav" ,
		"infra/vo/mark/oh_no_2.wav" ,
		"infra/vo/mark/oh_no_3.wav" ,
		"infra/vo/mark/oh_no_4.wav" ,
		"infra/vo/mark/oh_no_5.wav" ,
		"infra/vo/mark/oh_no_6.wav" ,
		"infra/vo/mark/oh_no_7.wav" ,
		"infra/vo/mark/oh_no_8.wav" ,
		"infra/vo/mark/oh_no_9.wav" ,
		"infra/vo/mark/oh_no_10.wav" ,
		"infra/vo/mark/oh_no_11.wav" ,
		"infra/vo/mark/shit_shit_shit_1.wav" ,
		"infra/vo/mark/shit_shit_shit_2.wav" ,
		"infra/vo/mark/shit_shit_shit_3.wav" ,
		"infra/vo/mark/shit_shit_shit_4.wav" ,
		"infra/vo/mark/monologue/reserve3/what.wav" ,
		"infra/vo/mark/monologue/sewer/steamtrap.wav" ,
		"infra/vo/mark/monologue/office/what_the_hell_1.wav" ,
		"infra/vo/mark/monologue/reserve2/oh_come_on_1.wav", 
		"infra/vo/mark/monologue/reserve2/shit_1.wav" ,
		"infra/vo/mark/monologue/sewer/whatthe.wav" ,
		"infra/vo/mark/monologue/tunnel1/fuck.wav" ,
	}
} )

sound.Add( { ["name"] = "INFRA.VO.Mark.FBD_Tripped_B",
	["channel"] = CHAN_VOICE ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"infra/vo/mark/definitely_not_getting_paid_enough_1.wav" ,
		"infra/vo/mark/definitely_not_getting_paid_enough_2.wav" ,
		"infra/vo/mark/definitely_not_getting_paid_enough_3.wav" ,
		"infra/vo/mark/definitely_not_getting_paid_enough_4.wav" ,
		"infra/vo/mark/definitely_not_getting_paid_enough_5.wav" ,
		"infra/vo/mark/definitely_not_getting_paid_enough_6.wav" ,
		"infra/vo/mark/definitely_not_getting_paid_enough_7.wav" ,
		"infra/vo/mark/well_thats_gonna_be_expensive_1.wav" ,
		"infra/vo/mark/well_thats_gonna_be_expensive_2.wav" ,
		"infra/vo/mark/well_thats_gonna_be_expensive_3.wav" ,
		"infra/vo/mark/well_thats_gonna_be_expensive_4.wav" ,
		"infra/vo/mark/well_thats_gonna_be_expensive_5.wav" ,
		"infra/vo/mark/well_thats_gonna_be_expensive_6.wav" ,
		"infra/vo/mark/well_thats_gonna_be_expensive_7.wav" ,
		"infra/vo/mark/monologue/thats_not_good_1.wav" ,
		"infra/vo/mark/monologue/im_pretty_sure_thats_not_meant_to_be_like_that_1.wav" ,
	}
} )

sound.Add( { ["name"] = "INFRA.VO.Mark.FBD_RerailA",
	["channel"] = CHAN_VOICE ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		-- "infra/vo/mark/done_1.wav" ,
		-- "infra/vo/mark/done_2.wav" ,
		-- "infra/vo/mark/done_3.wav" ,
		-- "infra/vo/mark/done_4.wav" ,
		-- "infra/vo/mark/done_5.wav" ,
		-- "infra/vo/mark/done_6.wav" ,
		-- "infra/vo/mark/eh_im_sure_itll_be_fine_1.wav" ,
		-- "infra/vo/mark/eh_im_sure_itll_be_fine_2.wav" ,
		-- "infra/vo/mark/eh_im_sure_itll_be_fine_3.wav" ,
		-- "infra/vo/mark/eh_im_sure_itll_be_fine_4.wav" ,
		-- "infra/vo/mark/eh_im_sure_itll_be_fine_5.wav" ,
		"infra/vo/mark/monologue/that_should_do_it_1.wav" ,
		"infra/vo/mark/monologue/the_water_company_should_pay_me_for_this_1.wav" ,
		"infra/vo/mark/monologue/they_should_pay_me_more_for_this_1.wav" ,
		"infra/vo/mark/monologue/there_we_go_1.wav" ,
		"infra/vo/mark/monologue/should_be_careful_1.wav" ,
		"infra/vo/mark/monologue/should_be_careful_with_all_this_equipment_1.wav" ,
		"infra/vo/mark/monologue/another_one_fixed_1.wav" ,
	}
} )
