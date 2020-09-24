/// @description Insert description here
// You can write your code in this editor
	levelid = string_delete(string( room_get_name(room)),1,7);
	curroom = asset_get_index("rm_oyun"+string(real(levelid)+1));
	room_goto(curroom);