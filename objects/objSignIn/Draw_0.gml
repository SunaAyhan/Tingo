/// @description Insert description here
// You can write your code in this editor
draw_self();
if(real(global.OurId)>0){
	draw_text(x+40,y-(sprite_get_height(EmptyButton)/2)+40, "Welcome Back \n" + global.OurName);
}else{
	draw_text(x+40,y-(sprite_get_height(EmptyButton)/2)+40, "Not Logged In \nClick here to LogIn");
}