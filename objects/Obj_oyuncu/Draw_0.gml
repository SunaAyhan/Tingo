draw_self();
if ( global.gorunmez == 1 and alarmDone==0)
{
	global.gorunmezlik -=1;
	alarm_set(0,5*room_speed);
	alarmDone=1;
	image_alpha=0.7
} 

if ( global.hizlan == 1 and alarmDone1==0)
{
	global.hizsayisi -=1;
	maxspeedcur=global.Max_Speed;
	global.Max_Speed += 2;
	alarm_set(1,5*room_speed);
	alarmDone1=1;
}
if ( global.saldir == 1 and alarmDone2==0)
{
	global.saldirisayi -=1;
	alarm_set(2,3*room_speed);
	alarmDone2=1;
}

if ( global.hizlan == 1){
	
	if(lastPosx-x<0){
		signX=-1;
	}else if(lastPosx-x>0){
		signX=1;	
	}else{
		signX=0;
	}
	
	if(lastPosy-y<0){
		signY=-1;
	}else if(lastPosy-y>0){
		signY=1;	
	}else{
		signY=0;
	}
	
	draw_sprite_ext(sprite_index,-1,x+(15*signX),y+(15*signY),image_xscale,image_yscale,0,c_white,0.7)
}
if ( global.saldir == 1){
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,0,c_red,0.7)
}

lastPosx = x;
lastPosy = y;