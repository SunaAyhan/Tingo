/// @description Insert description here
// You can write your code in this editor
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
