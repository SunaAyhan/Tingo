/// @description Insert description here
// You can write your code in this editor
global.MusicState=GetSettingsSound();
if(global.MusicState){
	sprite_index=Spr_SesAcik;
}else{
	sprite_index=Spr_SesKapali;
}