/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter))

{
	switch(room)
	{
		case rm_baslangic:
		room_goto(rm_oyun7);
		break;
		
		case rm_kaybetme:
		case rm_kazanma:
			game_restart();
			break;
     }
}
if (room==rm_oyun2)
{
	if(score==100)
	{
		room_goto(rm_kazanma);
	}
	if (lives<=0)
	{
		room_goto(rm_kaybetme);
	}
}
if (room==rm_kazanma)
{
if (keyboard_check_pressed(vk_enter))
{
room_goto(rm_oyun3)
}
}