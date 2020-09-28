/// @description Insert description here
// You can write your code in this editor
global.timer+=5*room_speed;
instance_destroy();
repeat(1)
{
instance_create_layer(x,y,"instances",Obj_toplama50);
}
