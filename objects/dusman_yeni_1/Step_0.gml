/// @description Insert description here
// You can write your code in this editor

/*var lay_id = layer_get_id("Tiles_2");
var map_id = layer_tilemap_get_id(lay_id);
var q = sprite_index, t;
var qx = sprite_get_xoffset(q);
var qy = sprite_get_yoffset(q);
my_bbox_left =  x + (sprite_get_bbox_left(q) - qx) * image_xscale-10;
my_bbox_right = x + (sprite_get_bbox_right(q) - qx) * image_xscale+10;
my_bbox_top =  (y + (sprite_get_bbox_top(q) - qy) * image_yscale)-10;
my_bbox_bottom = (y + (sprite_get_bbox_bottom(q) - qy) * image_yscale)+10;
constPos=15
leftAvalible = tilemap_get_at_pixel(map_id, my_bbox_left-constPos, my_bbox_top)and tilemap_get_at_pixel(map_id, my_bbox_left-constPos, my_bbox_bottom);
rightAvalible = tilemap_get_at_pixel(map_id, my_bbox_right+constPos, my_bbox_top)and tilemap_get_at_pixel(map_id, my_bbox_right+constPos, my_bbox_bottom);
upAvalible = tilemap_get_at_pixel(map_id, my_bbox_left, my_bbox_top-constPos) and tilemap_get_at_pixel(map_id, my_bbox_right, my_bbox_top-constPos);
downAvalible = tilemap_get_at_pixel(map_id, my_bbox_left, my_bbox_bottom+constPos) and tilemap_get_at_pixel(map_id, my_bbox_right, my_bbox_bottom+constPos);
avaliblePos = array(leftAvalible,rightAvalible,upAvalible,downAvalible);
wayC = 0;
oneWay= 0;
isChanged =0;
for(i = 0;i<4;i+=1){
	if(avaliblePos[i] > 0){ 
		wayC +=1;
		oneWay = i;
	}
	if((avaliblePos[i] != prevAvPos[i])){ isChanged =1;}
	prevAvPos[i] = avaliblePos[i] ;
}
if(isChanged==1){
	if(wayC==1){
		switch (oneWay){
			case 0:
				lastAct=0;
				x-=2;
				break;
			case 1:
				x+=2;
				lastAct=1;
				break;
			case 2:
				y-=2;
				lastAct=2;
				break;
			case 3:
				y+=2;
				lastAct=3;
				break;
		}
	}else if(wayC = 2){
		if(abs(change_x)>abs(change_y)){
			if(change_x<0){
				lastAct=1;
				x+=2;
			}else{
				lastAct=0;
				x-=2;
			}
		}else{
			if(change_y<0){
				lastAct=3;
				y+=2;
			}else{	
				lastAct=2;
				y-=2;
			}
		}
	}else if(wayC!=0){
		choice = irandom(wayC-1);
		notblocked = 0;
		switch (lastAct){
			case 0:
				unwanted = 1;
				break;
			case 1:
				unwanted = 0;
				break;
			case 2:
				unwanted = 3;
				break;
			case 3:
				unwanted = 2;
				break;
		}
		for(i = 0;i<4;i+=1){
			if((avaliblePos[i] > 0) and i!=unwanted) notblocked +=1;
			if(notblocked==choice){
				switch (i){
					case 0:
						lastAct=0;
						x-=2;
						break;
					case 1:
						x+=2;
						lastAct=1;
						break;
					case 2:
						y-=2;
						lastAct=2;
						break;
					case 3:
						y+=2;
						lastAct=3;
						break;
						}
				break;
			}
		}
	}
}else{
	switch (lastAct){
		case 0:
			x-=2;
			break;
		case 1:
			x+=2;
			break;
		case 2:
			y-=2;
			break;
		case 3:
			y+=2;
			break;
	}
	
}*/
if(distance_to_object( Obj_oyuncu )<50){
	var Player_Direction = point_direction(x, y, Obj_oyuncu.x, Obj_oyuncu.y);
	if(Player_Direction < 45 || Player_Direction >= 315){
        // Player is right.
		sprite_index=Saldiri_saga2;
    }
    else if(Player_Direction >= 45 && Player_Direction < 135){
        // Player is up.
		sprite_index = Saldiri_arkadan2;	
    }
    else if(Player_Direction >= 135 && Player_Direction < 225){
       // Player is left.
	   sprite_index = Saldiri_sola2;	
    }
    else if(Player_Direction >= 225 && Player_Direction < 315){
        // Player is down.
		sprite_index= Saldiri_onden2;
    }
}else{
	change_x = pos_prevx-x;
	change_y = pos_prevy-y;
	if(abs(change_x)>abs(change_y)){
		if(change_x<0){
			sprite_index=saga_yurume3;
		}else{
			sprite_index=sola_yurume2;	
		}
	}else{
		if(change_y<0){
			sprite_index=onden_yurume2;
		}else{
			sprite_index=arkadan_yurume2;	
		}
	}	
}
pos_prevx=x;
pos_prevy=y;
