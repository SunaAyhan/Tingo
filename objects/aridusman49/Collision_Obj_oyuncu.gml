/// @description Insert description here
// You can write your code in this editor

if ( global.gorunmez == 1 and alarmDone==0)
{
	alarm_set(0,5*room_speed);
	alarmDone=1;
	global.Max_Speed += 0.5
	repeat(3)
{
instance_create_layer(x,y,"instances",Obj_toplama5051);
}
}




instance_destroy();