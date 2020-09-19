// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function IsUnlocked(level){
	if (file_exists("data.sv")){
		ini_open("data.sv");
		var res = ini_read_real("level"+string(level),"is_unlocked",false);
		ini_close();
		return res;
	}
	return false;
}