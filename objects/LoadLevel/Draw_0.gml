/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_text(x-10,y-10,string(levelid))
if(!IsUnlocked(levelid) && levelid!=1)
{
	draw_sprite(spr_locked,-1,x-sprite_get_width(spr_locked)/2,y-sprite_get_height(spr_locked)/2);
}