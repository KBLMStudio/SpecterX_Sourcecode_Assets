timer += 1
obj_enemy_dummy_parent.image_alpha -= .1
if timer = 101 {
	instance_destroy(obj_enemy_dummy_parent)
	instance_destroy(self)
}
