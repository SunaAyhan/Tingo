/// @description Insert description here
// You can write your code in this editor
draw_self();
if (global.is_paused = 1){

textm = global.timer/room_speed;

instance_deactivate_all(1);
inst = instance_create_depth(room_width/5, room_height/2,2, Obj_pause_menu);
instance_create_depth(room_width/2, room_height/1.7,1, obj_resume);
instance_create_depth(room_width/3, room_height/1.7,1, Obj_menu);
draw_text_color(room_width/2,inst.y,"TIME REMAINS: "+ string(textm),1,1,1,1,1);
draw_text_color(room_width/3,inst.y,"GOLDS LEFT: "+string(leftGold)+ "/"+string(global.goldCount),1,1,1,1,1);

}