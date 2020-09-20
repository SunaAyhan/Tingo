var lay_id = layer_get_id("Tiles_2");
var map_id = layer_tilemap_get_id(lay_id);
if(keyboard_check(vk_left)and tilemap_get_at_pixel(map_id, x-6, y) != 0 and x>=0)
{
	x-=3
	image_xscale=sprite_index_normal
	sprite_index= sprLeftWalk
	lastPos = sprLeftIdle
}
if(keyboard_check(vk_right) and tilemap_get_at_pixel(map_id, x+6, y) != 0  and x<=room_width)
{
	x+=3
	image_xscale=-sprite_index_normal
	sprite_index= sprRightWalk
	lastPos = sprRightIdle
}
if(keyboard_check(vk_up)and tilemap_get_at_pixel(map_id, x, y-6) != 0 and y>=0 )
{
	y-=3
	image_xscale=sprite_index_normal
	sprite_index= sprBackWalk
	lastPos = sprBackIdle
}
if(keyboard_check(vk_down)and tilemap_get_at_pixel(map_id, x, y+6) != 0 and y<= room_height)
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

