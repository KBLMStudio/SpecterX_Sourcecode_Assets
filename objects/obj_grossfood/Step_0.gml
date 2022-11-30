if global.npc_array[npc_index] = 0 {
	text_string = ["What is that stuff?","I dunno...//But we should probably take it.","WHAT?!//Why?","In case our health gets low.","...?"]
	text_voice = [snd_voice_kev,snd_voice_stev,snd_voice_kev,snd_voice_stev,snd_voice_kev]
	text_portrait = [spr_kevin_p,spr_steve_p,spr_kevin_p,spr_steve_p,spr_kevin_p]
	}
	else {
		text_string = ["Your going to regret not taking this stuff when your HP drops.","...No...//I won't..."]
		text_voice = [snd_voice_stev,snd_voice_kev]
		text_portrait = [spr_steve_p,spr_kevin_p]
	}
