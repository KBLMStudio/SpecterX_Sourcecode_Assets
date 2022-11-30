timer += 0.01
if sprite_index != spr_tv_broken{
draw_sprite_ext(spr_tv_light,0,x+8,y+8,1+cos(timer)*.05,1+sin(timer)*0.05,0,c_white,.5 + sin(timer*.01)*.05)
}

