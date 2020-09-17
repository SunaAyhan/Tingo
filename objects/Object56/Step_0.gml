/// @description Insert description here
// You can write your code in this editor
if (global.is_paused = 1){

instance_deactivate_all(1);
instance_create_depth(room_width/5, room_height/10,2, Obj_pause_menu);
instance_create_depth(room_width/2, room_height/1.5,1, obj_resume);
instance_create_depth(room_width/3, room_height/1.5,1, Obj_menu);
}