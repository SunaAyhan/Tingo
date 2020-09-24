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
	if (global.timeUp||global.isDead)
	{
		
		textm = global.timer/room_speed;
		leftGold= instance_number(Obj_altin);
		inst = instance_create_depth(room_width/5, room_height/10,2, Obj_LoseMenu);
		instance_create_depth(room_width/2, room_height/1.5,1, Obj_Yeniden);
		instance_create_depth(room_width/3, room_height/1.5,1, Obj_menu);
		draw_text_color(inst.x+15,inst.y-25,"TIME REMAINS: "+ string(textm),1,1,1,1,1);
		draw_text_color(inst.x+300,inst.y-25,"GOLDS LEFT: "+string(leftGold)+ "/"+string(global.goldCount),1,1,1,1,1);
	}
}