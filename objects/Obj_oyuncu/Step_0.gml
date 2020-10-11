var lay_id = layer_get_id("Tiles_2");
var map_id = layer_tilemap_get_id(lay_id);
var q = sprite_index, t;
var qx = sprite_get_xoffset(q);
var qy = sprite_get_yoffset(q);
my_bbox_left =  x + (sprite_get_bbox_left(q) - qx) * image_xscale;
my_bbox_right = x + (sprite_get_bbox_right(q) - qx) * image_xscale;
my_bbox_top =  (y + (sprite_get_bbox_top(q) - qy) * image_yscale)-10;
my_bbox_bottom = (y + (sprite_get_bbox_bottom(q) - qy) * image_yscale)+10;
// flip L/R or T/B on negative scales:
if (image_xscale < 0) {
    t = my_bbox_left;
    my_bbox_left = my_bbox_right;
    my_bbox_right = t;
}
if (image_yscale < 0) {
    t = my_bbox_top;
    my_bbox_top = my_bbox_bottom;
    my_bbox_bottom = t;
	
}
if(keyboard_check(vk_nokey)){
	/*if(lastPos == sprRightIdle){
		image_xscale=-sprite_index_normal;}
	else{
		image_xscale=sprite_index_normal;}*/
	sprite_index= lastPos;
}else{
	/*count+=1;
	if(count == 13 ){
		count = 0;
		audio_play_sound(_406741__kretopi__steponwood_005,0,false);
	}	*/
if(keyboard_check(vk_left)and ( tilemap_get_at_pixel(map_id, my_bbox_left-global.yurumehizix, bbox_bottom) and tilemap_get_at_pixel(map_id, my_bbox_left-global.yurumehizix, bbox_top)) != 0 and x>=0)
{
	x-=global.yurumehizix
	//image_xscale=sprite_index_normal
	sprite_index= sprLeftWalk
	lastPos = sprLeftIdle
}else if(keyboard_check(vk_left)and ( tilemap_get_at_pixel(map_id, my_bbox_left-1, bbox_bottom) and tilemap_get_at_pixel(map_id, my_bbox_left-1, bbox_top)) != 0 and x>=0)
{
	x-=1
	//image_xscale=sprite_index_normal
	sprite_index= sprLeftWalk
	lastPos = sprLeftIdle
}else if(keyboard_check(vk_right) and (tilemap_get_at_pixel(map_id, my_bbox_right+global.yurumehizix, bbox_bottom) and tilemap_get_at_pixel(map_id, my_bbox_right+global.yurumehizix, bbox_top)) != 0  and x<=room_width)
{
	x+=global.yurumehizix
	//image_xscale=-sprite_index_normal
	sprite_index= sprRightWalk
	lastPos = sprRightIdle
}else if(keyboard_check(vk_right) and (tilemap_get_at_pixel(map_id, my_bbox_right+1, bbox_bottom) and tilemap_get_at_pixel(map_id, my_bbox_right+1, bbox_top)) != 0  and x<=room_width)
{
	x+=1
	//image_xscale=-sprite_index_normal
	sprite_index= sprRightWalk
	lastPos = sprRightIdle
}
if(keyboard_check(vk_up)and(tilemap_get_at_pixel(map_id, my_bbox_left, my_bbox_top-global.yurumehiziy) and tilemap_get_at_pixel(map_id, my_bbox_right, my_bbox_top-global.yurumehiziy)) != 0 and y>=0 )
{
	y-=global.yurumehiziy
	//image_xscale=sprite_index_normal
	sprite_index= sprBackWalk
	lastPos = sprBackIdle
}else if(keyboard_check(vk_up)and(tilemap_get_at_pixel(map_id, my_bbox_left, my_bbox_top-1) and tilemap_get_at_pixel(map_id, my_bbox_right, my_bbox_top-1)) != 0 and y>=0 )
{
	y-=1
	//image_xscale=sprite_index_normal
	sprite_index= sprBackWalk
	lastPos = sprBackIdle
}
if(keyboard_check(vk_down)and (tilemap_get_at_pixel(map_id, my_bbox_left, my_bbox_bottom+global.yurumehiziy) and tilemap_get_at_pixel(map_id, my_bbox_right, my_bbox_bottom+global.yurumehiziy)) != 0 and y<= room_height)
{
	y+=global.yurumehiziy
	//image_xscale=sprite_index_normal
	sprite_index= sprFrontWalk
	lastPos = sprFrontIdle
	
}else if(keyboard_check(vk_down)and (tilemap_get_at_pixel(map_id, my_bbox_left, my_bbox_bottom+1) and tilemap_get_at_pixel(map_id, my_bbox_right, my_bbox_bottom+1)) != 0 and y<= room_height)
{
	y+=1
	//image_xscale=sprite_index_normal
	sprite_index= sprFrontWalk
	lastPos = sprFrontIdle
	
}
}