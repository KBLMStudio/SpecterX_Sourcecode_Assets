//0 name, 1 max health,2 damage,3 defense, 4 desc, 5 exp,6 sprite object, 7 hurt animation, 8 attack script,9. music
global.enemy_array[0] = ["Murphy Mckill", 15,1,1,"Died after an unlucky fall.", 999, obj_enemy_mk_control,obj_enemy_mk_hurt,scr_enemy_mk_attack,mus_KNIVES]
global.enemy_array[1] = ["Sheet Ghost",15,2,1,"A true spooktastic classic!", 5, obj_enemy_sg_control,obj_enemy_sg_hurt,scr_enemy_sg_attack,mus_ectoplasmic_battle]
global.enemy_array[2] = ["Mirror Demon",20,3,2,"...BEHIND YOU...!", 10,obj_mirrorghost_control,obj_enemy_mirrorghost_hurt,scr_enemy_mirrorghost_attack,mus_ectoplasmic_battle]
global.enemy_array[3] = ["TV Terror",40,3,3,"Don't sit too close to the TV!", 15,obj_enemy_tvghost_control,obj_enemy_tvghost_hurt,scr_enemy_tv_attack,mus_ectoplasmic_battle]
global.enemy_array[4] = ["Mckill Reborn",50,5,3,"SOON HE SHALL BE A GOD!",999,obj_enemy_mkm_control,obj_enemy_mkm_hurt,scr_enemy_mkm_attack,mus_clanking_chains]
