if global.npc_array[npc_index] = 0 {
text_string = ["What...//...Uh...//Other ghosts are there in here?","Oh jeez, there are TONS of the-","Nope, none...//There are none, it's actually been surprisingly quiet...","What, no? There are loads...","STOP."]
text_voice = [snd_voice_bf,snd_voice_stev,snd_voice_kev,snd_voice_stev,snd_voice_kev]
text_portrait = [spr_bf_p,spr_steve_p,spr_kevin_p,spr_steve_p,spr_kevin_p]
}
else {
text_string = ["Do you guys hunt ghosts often?","It's our job.","That must be terrifying!","It's not too bad...//A lot of dodging mostly.","What?","Nevermind."]
text_voice=  [snd_voice_bf,snd_voice_stev,snd_voice_bf,snd_voice_stev,snd_voice_bf,snd_voice_stev]
text_portrait = [spr_bf_p,spr_steve_p,spr_bf_p,spr_steve_p,spr_bf_p,spr_steve_p]
}
