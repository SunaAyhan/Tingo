// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetTime(level){
	if (file_exists("data.sv"))
	{ 
		ini_open("data.sv");
		var res = ini_read_real("level"+string(level),"time",0);
		ini_close();
		return res;
	}
	return 0;
} 