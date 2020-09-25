
draw_set_font(Font_text);
if (string_delete(string( room_get_name(room)),8,2)=="rm_oyun")
{
	if(!instance_exists(Obj_altin))
	{
		global.IsPassed=1;
		curlevel = string_delete(string( room_get_name(room)),1,7);
		show_debug_message(curlevel);
		LevelPassed(curlevel,global.timer/60);
		inst = instance_create_depth(room_width/2, room_height/2,2, Obj_WinMenu);
		instance_create_depth(room_width/2, room_height/1.5,1, Obj_menu);
		instance_create_depth(room_width/3, room_height/1.5,1, Obj_NextLVL);
	}
	if (global.timeUp||global.isDead)
	{
		
		textm = global.timer/room_speed;
		leftGold= instance_number(Obj_altin);
		inst = instance_create_depth(room_width/5, room_height/2,2, Obj_LoseMenu);
		instance_create_depth(room_width/2, room_height/1.5,1, Obj_Yeniden);
		instance_create_depth(room_width/3, room_height/1.5,1, Obj_menu);
		draw_text_color(room_width/2,inst.y,"TIME REMAINS: "+ string(textm),1,1,1,1,1);
		draw_text_color(room_width/3,inst.y,"GOLDS LEFT: "+string(leftGold)+ "/"+string(global.goldCount),1,1,1,1,1);
	}
}
