/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Font_text);
if(real(global.PlayerID)>0){
	draw_text(x,y, "Welcome Back \n" + global.PlayerName);
}else{
	draw_text(x,y, "Not Logged In \nClick here to LogIn");
}