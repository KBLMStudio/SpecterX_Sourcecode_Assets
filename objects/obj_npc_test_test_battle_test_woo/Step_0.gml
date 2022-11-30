if place_meeting(x,y,obj_stev) && !instance_exists(obj_pumpkinroller) {
	global.battle_index = 4
instance_create_depth(x,y,depth,obj_pumpkinroller)
instance_destroy(self)
}
