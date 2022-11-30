if global.npc_array[npc_index] = 0 {
	text_string = ["Poor Tree...//It hasn't been watered in years.","I'm not sure how much good it will do now..."]
	text_voice = [snd_voice_kev,snd_voice_stev]
	text_portrait = [spr_kevin_p,spr_steve_p]
	}
	else {
		text_string = ["Do plants have ghosts?","Most ghosts have unfinished business...  So unless this tree has a mortgage...","To be honest, I doubt it."]
		text_voice = [snd_voice_kev,snd_voice_stev,snd_voice_stev]
		text_portrait = [spr_kevin_p,spr_steve_p,spr_steve_p]
	}
