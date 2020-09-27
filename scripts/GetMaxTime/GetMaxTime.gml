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
		var times = array(80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80);
		for(var i = 0;i<23;i+=1)
		{
			ini_write_real("times",i,times[i]);
		}
		res = times[real(level)];
		ini_close();
		return res;
	}
}