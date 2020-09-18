// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LevelPassed(level,time){
ini_open("data.sv");
ini_write_real("level"+string(level),"is_passed",true);
ini_write_real("level"+string(level),"time",time);
ini_close();
}