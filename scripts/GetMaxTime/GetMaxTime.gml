// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetMaxTime(level){
	if (file_exists("times.sv"))
	{
		ini_open("times.sv");
		var res = ini_read_real("times",level,0);
		ini_close();
		return res;
	}else
	{
		ini_open("times.sv");
		var times = array(60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60);
		for(var i = 0;i<20;i+=1)
		{
			ini_write_real("times",i+1,times[i]);
		}
		res = times[real(level)];
		ini_close();
		return res;
	}
}