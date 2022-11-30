if global.npc_array[npc_index] = 0 {
	text_string = ["Are we leaving?//Shouldn't we take care of Mckill first?","No!//I'm not leaving...","...I was just...//...Stepping out for fresh air."]
	text_voice = [snd_voice_kev,snd_voice_stev,snd_voice_stev]
	text_portrait = [spr_kevin_p,spr_steve_p,spr_steve_p]
	}
	else {
		text_string = ["It's probably not the best idea to leave behind an insane ressurrected serial killer...","But then again, what do I know?"]
			text_voice = [snd_voice_stev,snd_voice_stev]
		text_portrait = [spr_steve_p,spr_steve_p]
	}
