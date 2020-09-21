/// @description Insert description here
// You can write your code in this editor
v_pos = startPosx-mouse_x;
h_pos = startPosy-mouse_y;
hold = device_mouse_check_button(0,mb_left)
if(v_pos>10 and hold){
	keyboard_key_press(vk_left);
	keyboard_key_release(vk_right);
}else if(v_pos<-10 and hold){
	keyboard_key_press(vk_right);
	keyboard_key_release(vk_left);
}else{
	keyboard_key_release(vk_left);
	keyboard_key_release(vk_right);
}
if(h_pos>10 and hold){
	keyboard_key_press(vk_up);
	keyboard_key_release(vk_down);
}else if(h_pos<-10 and hold){
	keyboard_key_press(vk_down);
	keyboard_key_release(vk_up);
}else{
	keyboard_key_release(vk_up);
	keyboard_key_release(vk_down);
}

