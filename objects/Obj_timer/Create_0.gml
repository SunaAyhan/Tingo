/// @description Insert description here
// You can write your code in this editor
curlevel = string_delete(string( room_get_name(room)),1,7);
global.timer = room_speed * GetMaxTime(curlevel);
global.is_paused = false;
