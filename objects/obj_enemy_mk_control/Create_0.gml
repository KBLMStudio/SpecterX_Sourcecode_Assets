instance_create_depth(x,y+7,depth+1,obj_enemy_mk_legs)
instance_create_depth(x,y,depth,obj_enemy_mk_body)
instance_create_depth(x,y-16,depth-2,obj_enemy_mk_head)
instance_create_depth(x-10,y-10,depth-1,obj_enemy_mk_l_arm)
instance_create_depth(x+10,y-10,depth-1,obj_enemy_mk_r_arm)
timer = 0
audio_play_sound(snd_mk_breath,1,1)

