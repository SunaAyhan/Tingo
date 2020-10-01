
if(distance_to_object( Obj_oyuncu )<15 and global.gorunmez=0){
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
	count+=1;
	if(count == 20 ){
		count = 0;
	}else if(count==1){
		audio_play_sound(Drop_Sword_SoundBible_com_768774345,0,false);	
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
