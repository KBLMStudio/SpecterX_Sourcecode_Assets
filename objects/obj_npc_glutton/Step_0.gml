if global.npc_array[npc_index] = 0 {
	text_string = ["What's up with this guy?","...I think he's in a food coma...","It makes you wonder...//How DOES ghost food taste?","...//It doesn't make me wonder that at all..."]
	text_voice = [snd_voice_stev,snd_voice_kev,snd_voice_stev,snd_voice_kev]
	text_portrait = [spr_steve_p,spr_kevin_p,spr_steve_p,spr_kevin_p]
	}
	else {
		text_string = ["Can ghosts eat human food?","Hmm...//I've never thought to test it.","...That's probably...//...For the best..."]
		text_voice = [snd_voice_kev,snd_voice_stev,snd_voice_kev]
		text_portrait = [spr_kevin_p,spr_steve_p,spr_kevin_p]
	}
	depth = -600
