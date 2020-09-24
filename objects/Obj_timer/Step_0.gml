/// @description Insert description here
// You can write your code in this edito

if (global.timer > 0 && !global.is_paused && !global.isDead) {
	global.timer--;
	
	
	}

if (global.timer == 0)
{
	global.timeUp= 1;
	global.timer = -1; // This is important, or the timer will trigger every step once it runs out
}