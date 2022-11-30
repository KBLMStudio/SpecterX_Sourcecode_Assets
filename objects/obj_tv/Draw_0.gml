depth = -y
if sprite_index != spr_tv_hiding && sprite_index != spr_tv_broken && sprite_index != spr_tv_intro{
	draw_sprite(spr_tv_static,image_index,x,y)
}
draw_self()
if sprite_index = spr_tv_intro || sprite_index = spr_tv_laugh{
y = y + sin(timer*10)
}
