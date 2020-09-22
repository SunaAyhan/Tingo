/// @description Insert description here
// You can write your code in this editor

var lay_id = layer_get_id("Tiles_2");
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
	
}
change_x = pos_prevx-x;
change_y = pos_prevy-y;
if(place_meeting(x,y,Obj_oyuncu)){
	sprite_index= saldiri_onden;
}else if(place_meeting(x+10,y,Obj_oyuncu)){
	sprite_index=Saldiri_saga;
}else if(place_meeting(x,y+10,Obj_oyuncu)){
	sprite_index = saldiri_onden;	
}else if(place_meeting(x-10,y,Obj_oyuncu)){
	sprite_index = Saldiri_sola;	
}else if(place_meeting(x,y-10,Obj_oyuncu)){
	sprite_index = Saldiri_arkadan;
}else{
	if(abs(change_x)>abs(change_y)){
		if(change_x<0){
			sprite_index=Saga_yurume;
		}else{
			sprite_index=sola_yurume;	
		}
	}else{
		if(change_y<0){
			sprite_index=onden_yurume;
		}else{
			sprite_index=arkadan_yurume;	
		}
	}	
}
pos_prevx=x;
pos_prevy=y;
