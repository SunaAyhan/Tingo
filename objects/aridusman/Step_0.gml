/// @description Insert description here
// You can write your code in this editor
	change_x = pos_prevx-x;
	change_y = pos_prevy-y;
	if(abs(change_x)>abs(change_y)){
		if(change_x<0){
			sprite_index=orumceksag;
		}else{
			sprite_index=orumcesol;	
		}
	}else{
		if(change_y<0){
			sprite_index=orumcekust;
		}else{
			sprite_index=orumcekalt;	
		}
	}	

pos_prevx=x;
pos_prevy=y;
