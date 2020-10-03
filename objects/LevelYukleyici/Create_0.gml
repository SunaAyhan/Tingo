/// @description Insert description here
// You can write your code in this editor
if(LastLoaded()<6) global.tema = 1;
else if(LastLoaded()<11) global.tema = 2;
else if(LastLoaded()<17) global.tema = 3;
else global.tema = 4;
global.Font = font_add_sprite_ext(Spr_Font, "0123456789", true, 0);