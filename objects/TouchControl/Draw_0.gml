/// @description Insert description here
// You can write your code in this editor
if(isDragging){
draw_sprite(Spr_JoystickBg,999,startPosx,startPosy);
	if(point_in_circle(mouse_x, mouse_y, startPosx, startPosy, mouse_radius)){
		curX=mouse_x;
		curY=mouse_y;
		lockedPos = 0;
	}else{
		dirs    = point_direction( startPosx, startPosy, mouse_x, mouse_y )
		
		curX = clamp(mouse_x,startPosx,startPosx+lengthdir_x(mouse_radius, dirs))
		curY = clamp(mouse_y,startPosx, startPosy+ lengthdir_y(mouse_radius, dirs))
		if(abs(startPosx-mouse_x)>200 or abs(startPosy-mouse_y)>200 ){	
			if(abs(startPosx-curX)>abs(startPosy-curY)){
				if(startPosx-curX<0){
					lockedPos = 3;
				}else{
					lockedPos = 1;
				}
			}else{
				if(startPosy-curY<0){
					lockedPos = 4;
				}else{
					lockedPos = 2;
				}
			}
		}else{
			lockedPos = 0;
		}
	}
draw_sprite(Spr_JoystickFront,999,curX,curY);
	
}
//0 yok 1 sol 2 yukarı 3 sağ 4 aşağı
switch(lockedPos){
	case 0:
		break;
		
	case 1:
		draw_sprite(lockMove,999,startPosx-200,startPosy);
		break;
		
	case 2:
		draw_sprite(lockMove,999,startPosx,startPosy-200);
		break;
		
	case 3:
		draw_sprite(lockMove,999,startPosx+200,startPosy);
		break;
		
	case 4:
		draw_sprite(lockMove,999,startPosx,startPosy+200);
		break;
	
}