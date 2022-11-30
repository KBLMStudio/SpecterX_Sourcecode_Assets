timer += .0625 * (abs(global.battle_enemy_health -global.battle_enemy_max_health)*.01+1)
obj_enemy_tvghost_tv.x = x + sin(timer)*10
obj_enemy_tvghost_tv.image_angle = cos(timer)*22.5
obj_enemy_tvghost_tv.y = y + cos(timer)*5
obj_enemy_tvghost_eye.x = x + sin(timer)*10.5
obj_enemy_tvghost_eye.y = y + cos(timer)*5.25
obj_enemy_tvghost_eye.image_angle = obj_enemy_tvghost_tv.image_angle + sin(timer*3)*10
obj_enemy_tvghost_mouth.x = x + sin(timer)*10.25
obj_enemy_tvghost_mouth.y = y + cos(timer)*5.125
obj_enemy_tvghost_mouth.image_angle = sin(timer)*15
obj_enemy_tvghost_ant.x = x + sin(timer)*10
obj_enemy_tvghost_ant.y = obj_enemy_tvghost_tv.y - 16 - abs(cos(timer)*5)
obj_enemy_tvghost_ant.image_angle = sin(timer)*20
obj_enemy_tvghost_ant.image_xscale = 1 - abs((cos(timer)*.25))
obj_enemy_tvghost_ant.image_yscale = 1 + abs(cos(timer)*.25)
obj_enemy_tvghost_mouth.image_xscale = 1 + sin(timer)*.25

