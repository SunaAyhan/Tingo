draw_self();
if ( global.gorunmez == 1 and alarmDone==0)
{
	alarm_set(0,5*room_speed);
	alarmDone=1;
	image_alpha=0.7
} 