/// @description Insert description here
// You can write your code in this editor
draw_self();

if(!IsUnlocked(levelid) && levelid!=0)
{
	draw_sprite(spr_locked,-1,x+sprite_get_width(spr_locked)/2,y-sprite_get_height(spr_locked)/2);
}else
{
	switch(real(GetStars(levelid)))
	{
		case 3:
			spr= draw_sprite_ext(Spritestar3,-1,x+sprite_get_width(Spritestar3)/5,y+20,0.5,0.5,0,c_white,1);
			break;
		case 2:
			spr= draw_sprite_ext(Spritestar2,-1,x+sprite_get_width(Spritestar2)/5,y+20,0.5,0.5,0,c_white,1);
			break;
		case 1:
			spr= draw_sprite_ext(Spritestar1,-1,x+sprite_get_width(Spritestar1)/5,y+20,0.5,0.5,0,c_white,1);
			break;
		case 0:
			spr= draw_sprite_ext(Spritestar0,-1,x+sprite_get_width(Spritestar0)/5,y+20,0.5,0.5,0,c_white,1);
			break;
	}
}
draw_set_font(global.Font);
draw_set_halign(fa_center);
draw_text((x+sprite_get_width(EmptyButton)/2),y-30,string(levelid));
draw_set_halign(fa_left);