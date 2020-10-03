// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LastLoaded(){
	for(i = 0;i<21;i++){
		if(!IsUnlocked(i)) break;
	}
	if(i>0) return i-1;
	else return i;
}