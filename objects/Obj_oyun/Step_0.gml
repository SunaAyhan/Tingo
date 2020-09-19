/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter))

{
	switch(room)
	{
		case rm_kaybetme:
			game_restart();
			break;
		case rm_kazanma:
			game_restart();
			break;
     }
}
if (string_delete(string( room_get_name(room)),8,2)=="rm_oyun")
{
	if(!instance_exists(Obj_altin))
	{
		curlevel = string_delete(string( room_get_name(room)),1,7);
		show_debug_message(curlevel);
		LevelPassed(curlevel,global.timer/60);
		room_goto(rm_kazanma);
	}
	if (lives<=0)
	{
		room_goto(rm_kaybetme);
	}
}