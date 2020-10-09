// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isLoggedIn(){
if (file_exists("settings.sv"))
	{ 
		ini_open("settings.sv");
		var res = ini_read_real("Settings","login",0);
		ini_close();
		return res;
	}else{
		ini_open("settings.sv");
		ini_write_real("Settings","login",0);
		res = 0;
		ini_close();
		return res;
	}
}