surface_resize(application_surface,160,160)
audio_stop_all()
draw_set_color(c_white)
audio_play_sound(mus_incorporeal,1,0)
repeat_count = 0
instance_create_depth(global.ghost_x,global.ghost_y,depth-1,obj_ghost_oof)
