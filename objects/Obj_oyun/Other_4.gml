audio_stop_all();
if (string_delete(string( room_get_name(room)),8,2)!="rm_oyun")
{
	GoogleMobileAds_AddBannerAt(global.banner_id, GoogleMobileAds_Banner, room_width/2, room_height-100);
}else{
	GoogleMobileAds_RemoveBanner();
}
if(global.MusicState){
audio_play_sound(happy__1_,1,true);
}
keyboard_key_release(vk_up);
keyboard_key_release(vk_down);
keyboard_key_release(vk_left);
keyboard_key_release(vk_right);
lockedPos = 0;
isDragging = 0;