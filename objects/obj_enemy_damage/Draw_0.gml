timer += 1
x += 1/9
y = checky - sin(timer/180*pi)*35
draw_set_color(#a81000)
draw_text_ext_color(x,y,"-"+string(damage),1,999,#a81000,#a81000,#a81000,#a81000,1 - sin(timer/180*pi/2))
if timer = 180 {
	instance_destroy(self)
}
