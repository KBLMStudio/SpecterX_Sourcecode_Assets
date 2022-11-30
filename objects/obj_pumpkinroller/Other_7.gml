global.back_room = room
audio_pause_all()
global.back_view_w = view_get_wport(view_current)
global.back_view_h = view_get_hport(view_current)
room_persistent = true
room = rm_battle
instance_destroy(self)
