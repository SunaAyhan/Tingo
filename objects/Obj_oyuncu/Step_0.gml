
if(keyboard_check(vk_left)and place_meeting(x-3,y,Obj_parent) = 0 and x>=0)
{
	x-=3
	image_xscale=sprite_index_normal
	sprite_index= sprLeftWalk
	lastPos = sprLeftIdle
}
if(keyboard_check(vk_right) and place_meeting(x+3,y,Obj_parent) = 0 and x<=room_width)
{
	x+=3
	image_xscale=-sprite_index_normal
	sprite_index= sprRightWalk
	lastPos = sprRightIdle
}
if(keyboard_check(vk_up)and place_meeting(x,y-3,Obj_parent) = 0 and y>=0 )
{
	y-=3
	image_xscale=sprite_index_normal
	sprite_index= sprBackWalk
	lastPos = sprBackIdle
}
if(keyboard_check(vk_down)and place_meeting(x,y+3,Obj_parent) = 0 and y<= room_height)
{
	y+=3
	image_xscale=sprite_index_normal
	sprite_index= sprFrontWalk
	lastPos = sprFrontIdle
	
}
if(keyboard_check(vk_nokey)){
	if(lastPos == sprRightIdle)
		image_xscale=-sprite_index_normal
	else
		image_xscale=sprite_index_normal
	sprite_index= lastPos
}

