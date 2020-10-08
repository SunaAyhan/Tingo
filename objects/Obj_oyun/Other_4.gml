audio_stop_all();
if(global.MusicState){
audio_play_sound(happy__1_,1,true);
}
keyboard_key_release(vk_up);
keyboard_key_release(vk_down);
keyboard_key_release(vk_left);
keyboard_key_release(vk_right);
lockedPos = 0;
isDragging = 0;