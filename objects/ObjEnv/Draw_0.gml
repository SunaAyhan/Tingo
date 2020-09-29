/// @description Insert description here
// You can write your code in this editor
EnvObjects[0] = global.gorunmezlik;
EnvObjects[1] = global.hizsayisi;
EnvObjects[2] = global.saldirisayi;

if(EnvObjects[0]>0){
	draw_sprite(EnvBg,999,x,y);
	draw_sprite_ext(Sprite315,999,x,y,0.5,0.5,0,c_white,1);
	draw_text(x+(sprite_get_width(Sprite315)/2),y+(sprite_get_height(Sprite315)/2),string(global.gorunmezlik));
}
if(EnvObjects[1]>0){
	draw_sprite(EnvBg,999,x,y-100);
	draw_sprite_ext(Sprite314,999,x,y-100,0.5,0.5,0,c_white,1);
	draw_text(x+(sprite_get_width(Sprite314)/2),y+(sprite_get_height(Sprite314)/2)-100,string(global.hizsayisi));
}
if(EnvObjects[2]>0){
	draw_sprite(EnvBg,999,x-100,y);
	draw_sprite_ext(Sprite303,999,x-100,y,0.5,0.5,0,c_white,1);
	draw_text(x+(sprite_get_width(Sprite303)/2)-100,y+(sprite_get_height(Sprite303)/2),string(global.saldirisayi));
}