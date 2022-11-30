if global.npc_array[npc_index] = 0 {
	text_string = ["Hey I used to have one of these systems when I was a kid!","This mansion really has been abondoned for years..."]
	text_voice = [snd_voice_stev,snd_voice_kev]
	text_portrait = [spr_steve_p,spr_kevin_p]
	}
	else {
		text_string = ["What game is that?","Dunno...//Something called Pleasantwood?","Looks like garbage...","Agreed."]
		text_voice = [snd_voice_stev,snd_voice_kev,snd_voice_stev,snd_voice_kev]
		text_portrait = [spr_steve_p,spr_kevin_p,spr_steve_p,spr_kevin_p]
	}
