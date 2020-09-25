// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetSettingsSound(State){
ini_open("settings.sv");
ini_write_real("Settings","Sound",State);
ini_close();
}