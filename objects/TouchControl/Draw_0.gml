/// @description Insert description here
// You can write your code in this editor
if(isDragging){
draw_sprite(Spr_JoystickBg,999,startPosx,startPosy);
	if(point_in_circle(mouse_x, mouse_y, startPosx, startPosy, mouse_radius)){
		curX=mouse_x;
		curY=mouse_y;
	}else{
		dirs    = point_direction( startPosx, startPosy, mouse_x, mouse_y )
		
		curX = clamp(mouse_x,startPosx,startPosx+lengthdir_x(mouse_radius, dirs))
		curY = clamp(mouse_y,startPosx, startPosy+ lengthdir_y(mouse_radius, dirs))
	}
draw_sprite(Spr_JoystickFront,999,curX,curY);
}