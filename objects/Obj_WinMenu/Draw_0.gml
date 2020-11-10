/// @description Insert description here
// You can write your code in this editor
draw_self();

switch(real(GetStars(levelid)))
	{
		case 3:
			draw_sprite(Spritestar3,-1,x-sprite_get_width(Spritestar3)/2.2-20,y-60);
			break;
		case 2:
			draw_sprite(Spritestar2,-1,x-sprite_get_width(Spritestar2)/2.2-20,y-60);
			break;
		case 1:
			draw_sprite(Spritestar1,-1,x-sprite_get_width(Spritestar1)/2.2-20,y-60);
			break;
		case 0:
			draw_sprite(Spritestar0,-1,x-sprite_get_width(Spritestar0)/2.2-20,y-60);
			break;
	}