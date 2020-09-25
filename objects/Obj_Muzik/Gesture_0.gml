/// @description Insert description here
// You can write your code in this editor
if(global.MusicState){
	sprite_index=Spr_SesKapali;
	global.MusicState = !global.MusicState;
	SetSettingsSound(global.MusicState);
	audio_stop_all();
}else{
	sprite_index=Spr_SesAcik;
	global.MusicState = !global.MusicState;
	SetSettingsSound(global.MusicState);
	audio_play_sound(happy__1_,1,true);
}