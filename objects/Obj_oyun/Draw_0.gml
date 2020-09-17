switch(room)
{
case rm_oyun:
draw_text(60,25,"SCORE: "+ string(score))
break;

case rm_baslangic:
draw_set_halign(fa_center);

var r = c_purple;
draw_text_transformed_color(room_width/2,250, "TINGO",3,3,0,r,r,r,r,1)
draw_text(room_width/2,400,"OYUNA BASLAMAK ICIN ENTER'A BAS");
draw_set_halign(fa_left);

break;

case rm_kazanma:
draw_set_halign(fa_center);
var r = c_purple;
draw_text_transformed_color(room_width/2,250, "TEBRIKLER KAZANDINIZ",3,3,0,r,r,r,r,1)
draw_text(room_width/2,400,"SCORE: 285");
draw_text(room_width/2,500,"BİR SONRAKİ LEVELE GECMEK ICIN ENTER'A BAS")
draw_set_halign(fa_left);
break;

case rm_kaybetme:
draw_set_halign(fa_center);
var r = c_purple
draw_text_transformed_color(room_width/2,250, "GAME OVER",3,3,0,r,r,r,r,1)
draw_text(room_width/2,400,"TEKRAR BASLAMAK ICIN ENTER'A BAS")
draw_set_halign(fa_left);
break;


}
draw_set_font(Font_text);
