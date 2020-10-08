/// @description Insert description here
// You can write your code in this editor
EnvObjects[0] = global.gorunmezlik;
EnvObjects[1] = global.hizsayisi;
EnvObjects[2] = global.saldirisayi;

if(EnvObjects[0]>0){
	draw_sprite(EnvBg,999,x,y);
	draw_sprite_ext(Sprite315,999,x,y,0.5,0.5,0,c_white,1);
	draw_text(x+(sprite_get_width(Sprite315)/4)-20,y+(sprite_get_height(Sprite315)/4)-20,string(global.gorunmezlik));
	draw_text(x-(sprite_get_width(Sprite315)/4),y+(sprite_get_height(Sprite315)/4),"Invisible");
}
if(EnvObjects[1]>0){
	draw_sprite(EnvBg,999,x,y-150);
	draw_sprite_ext(Sprite314,999,x,y-150,0.5,0.5,0,c_white,1);
	draw_text(x+(sprite_get_width(Sprite314)/4)-20,y+(sprite_get_height(Sprite314)/4)-170,string(global.hizsayisi));
	draw_text(x-(sprite_get_width(Sprite314)/4),y+(sprite_get_height(Sprite314)/4)-150,"SpeedUp");
}
if(EnvObjects[2]>0){
	draw_sprite(EnvBg,999,x-150,y);
	draw_sprite_ext(Sprite303,999,x-150,y,0.5,0.5,0,c_white,1);
	draw_text(x+(sprite_get_width(Sprite303)/4)-170,y+(sprite_get_height(Sprite303)/4)-20,string(global.saldirisayi));
	draw_text(x-(sprite_get_width(Sprite303)/4)-150,y+(sprite_get_height(Sprite303)/4),"Destroy");

}