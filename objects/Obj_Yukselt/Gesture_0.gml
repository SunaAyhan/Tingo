/// @description Insert description here
// You can write your code in this editor
ini_open("data.sv");
for(i=1;i<25;i++){
	ini_write_real("level"+string(i),"is_unlocked",true);
}
ini_close();
