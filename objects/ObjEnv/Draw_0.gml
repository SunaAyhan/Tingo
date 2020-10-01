/// @description Insert description here
// You can write your code in this editor
EnvObjects[0] = global.gorunmezlik;
EnvObjects[1] = global.hizsayisi;
EnvObjects[2] = global.saldirisayi;

if(EnvObjects[0]>0){
	draw_sprite(EnvBg,999,x,y);
	draw_sprite_ext(Sprite315,999,x,y,0.5,0.5,0,c_white,1);
	draw_text(x+(sprite_get_width(Sprite315)/4)-20,y+(sprite_get_height(Sprite315)/4)-20,string(global.gorunmezlik));
}
if(EnvObjects[1]>0){
	draw_sprite(EnvBg,999,x,y-100);
	draw_sprite_ext(Sprite314,999,x,y-100,0.5,0.5,0,c_white,1);
	draw_text(x+(sprite_get_width(Sprite314)/4)-20,y+(sprite_get_height(Sprite314)/4)-120,string(global.hizsayisi));
}
if(EnvObjects[2]>0){
	draw_sprite(EnvBg,999,x-100,y);
	draw_sprite_ext(Sprite303,999,x-100,y,0.5,0.5,0,c_white,1);
	draw_text(x+(sprite_get_width(Sprite303)/4)-120,y+(sprite_get_height(Sprite303)/4)-20,string(global.saldirisayi));
}