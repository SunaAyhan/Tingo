/// @description Insert description here
// You can write your code in this editor

v_pos = startPosx-mouse_x;
if(v_pos>100 or v_pos <-100) {if(v_pos<0) {v_pos = -100}else{v_pos = 100}}
h_pos = startPosy-mouse_y;
if(h_pos>100 or h_pos <-100) {if(h_pos<0) {h_pos = -100}else{h_pos = 100}}
hold = device_mouse_check_button(0,mb_left)
if(v_pos>10 and hold){
	global.yurumehizix = (v_pos / 100) * 3; 
	keyboard_key_press(vk_left);
	keyboard_key_release(vk_right);
}else if(v_pos<-10 and hold){
	global.yurumehizix = (v_pos / -100) * 3; 
	keyboard_key_press(vk_right);
	keyboard_key_release(vk_left);
}else{
	keyboard_key_release(vk_left);
	keyboard_key_release(vk_right);
}
if(h_pos>10 and hold){
	global.yurumehiziy = (h_pos / 100) * 3; 
	keyboard_key_press(vk_up);
	keyboard_key_release(vk_down);
}else if(h_pos<-10 and hold){
	global.yurumehiziy = (h_pos / -100) * 3;
	keyboard_key_press(vk_down);
	keyboard_key_release(vk_up);
}else{
	keyboard_key_release(vk_up);
	keyboard_key_release(vk_down);
}
