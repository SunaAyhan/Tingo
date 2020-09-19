/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_text(x-10,y-10,string(levelid))
if(!IsUnlocked(levelid) && levelid!=1)
{
	draw_sprite(spr_locked,-1,x-sprite_get_width(spr_locked)/2,y-sprite_get_height(spr_locked)/2);
}else
{
	switch(real(GetStars(levelid)))
	{
		case 3:
			draw_sprite(Spritestar3,-1,x-sprite_get_width(Spritestar3)/2,y);
			break;
		case 2:
			draw_sprite(Spritestar2,-1,x-sprite_get_width(Spritestar2)/2,y);
			break;
		case 1:
			draw_sprite(Spritestar1,-1,x-sprite_get_width(Spritestar1)/2,y);
			break;
		case 0:
			draw_sprite(Spritestar0,-1,x-sprite_get_width(Spritestar0)/2,y);
			break;
	}
}