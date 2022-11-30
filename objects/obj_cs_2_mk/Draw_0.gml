if timer > 30 {
	rot += 5
	draw_sprite_ext(spr_godray,0,x+16,y+16,timer*.01+sin(sin_timer)*.5,timer*.01+sin(sin_timer)*.5,rot,c_white,timer*.01+sin(sin_timer)*.5)
}
draw_self()
draw_sprite_ext(spr_mk_f_spirit,image_index,x,y,1,1,0,c_white,timer*.01)
