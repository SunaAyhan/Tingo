/// @description Insert description here
// You can write your code in this editor
curlevel = string_delete(string( room_get_name(room)),1,7);
global.timer = room_speed * GetMaxTime(curlevel);
global.is_paused = false;
global.goldCount = instance_number(Obj_altin)+instance_number(Obj_altin2);
global.timeUp= 0;
