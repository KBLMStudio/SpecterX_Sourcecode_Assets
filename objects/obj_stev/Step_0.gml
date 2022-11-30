depth = -y - 16
if global.pause_check = 0 {
if v_speed != 0 || h_speed != 0 {
	image_speed = 1 
}
else {
	image_speed = 0
	image_index= 0
}
if global.stev_direction = 0 {
	sprite_index = spr_steve_b
}
else if global.stev_direction = 1 {
	sprite_index = spr_steve_r
}
else if global.stev_direction = 2 {
	sprite_index = spr_steve_f
}
else if global.stev_direction = 3 {
	sprite_index = spr_steve_l
}

if h_speed != 0 && v_speed = 0 {
	if !place_meeting(x+h_speed,y,obj_wall_parent){
		truex = truex + h_speed
	}
}
else if h_speed = 0 && v_speed != 0 {
	if !place_meeting(x,y+v_speed,obj_wall_parent){
		truey =truey + v_speed
	}
}
else {
	if !place_meeting(x+h_speed*2*sqrt(abs(h_speed/2)),y,obj_wall_parent){
		truex = truex + h_speed*sqrt(abs(h_speed/2))
	}
	if !place_meeting(x,y+v_speed*2*sqrt(abs(v_speed/2)),obj_wall_parent){
		truey = truey + v_speed*sqrt(abs(v_speed/2))
	}
}
}
if global.pause_check = 1 {
	image_speed = 0
	image_index = 0
}
if !place_meeting(round(truex),y,obj_wall_parent) {
x = round(truex)
}
else if !place_meeting(floor(truex),y,obj_wall_parent) {
	x= floor(truex)
}
if !place_meeting(x,round(truey),obj_wall_parent) { 
y = round(truey)
}
else if !place_meeting(x,floor(truey),obj_wall_parent) {
	 y = floor(truey)
}
