/// @description Insert description here
// You can write your code in this editor
draw_self();
textm = global.timer/room_speed;
leftGold= instance_number(Obj_altin)+instance_number(Obj_altin2);
draw_text(x+15,y-25,"TIME REMAINS: "+ string(textm));
draw_text(x+300,y-25,"GOLDS LEFT: "+string(leftGold)+ "/"+string(global.goldCount));
draw_text(x+620,y-25,string(global.gorunmezlik));
draw_sprite(Sprite315,999,x+600,y-25);