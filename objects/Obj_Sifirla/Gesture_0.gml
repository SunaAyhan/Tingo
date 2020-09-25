/// @description Insert description here
// You can write your code in this editor
ini_open("data.sv");
for(i=0;i<25;i++){
	ini_section_delete("level"+string(i));
}
ini_close();
