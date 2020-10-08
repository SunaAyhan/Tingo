/// @description Insert description here
// You can write your code in this editor
if(mouse_x>x-75 and mouse_y>y-75 and global.gorunmezlik >0){
global.gorunmez =1;
if(global.ach1<1){
	achievement_post("CgkIjYSy-aAGEAIQAQ", 100);
}
}
if(mouse_x>x-75 and mouse_y>y-225 and mouse_y<y-75 and global.hizsayisi >0){
global.hizlan = 1;
if(global.ach1<1){
	achievement_post("CgkIjYSy-aAGEAIQAg", 100);
}
}
if(mouse_x>x-225 and mouse_y>y-75 and mouse_x<x-75 and global.saldirisayi >0){
global.saldir = 1;
if(global.ach1<1){
	achievement_post("CgkIjYSy-aAGEAIQAw", 100);
}
}
keyboard_key_release(vk_up);
keyboard_key_release(vk_down);
keyboard_key_release(vk_left);
keyboard_key_release(vk_right);