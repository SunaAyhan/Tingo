/// @description Insert description here
// You can write your code in this editor
if(IsUnlocked(levelid) || levelid=0)
{
	curroom = asset_get_index("rm_oyun"+string(levelid));
	room_goto(curroom);
}else
{
	//alert
}