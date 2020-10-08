// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LevelPassed(level,time){
	lastTime=GetTime(level);
	ini_open("data.sv");
	ini_write_real("level"+string(real(level)+1),"is_unlocked",true);
	if(lastTime<real(time)){
		ini_write_real("level"+string(level),"time",real(time));
	}
	ini_close();
}