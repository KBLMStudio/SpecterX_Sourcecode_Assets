timer = 0
audio_play_sound(snd_battle_won,1,0)
repeat 200 {
instance_create_depth(irandom_range(80-40,80+40),irandom_range(48-20,48+20),depth - 20,obj_ghost_death)
}
