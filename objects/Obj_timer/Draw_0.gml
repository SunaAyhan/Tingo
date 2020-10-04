/// @description Insert description here
// You can write your code in this editor
draw_self();
textm = round(global.timer/room_speed);
leftGold= instance_number(Obj_altin)+instance_number(Obj_altin2);
draw_text(x+15,y-25,"TIME REMAINS: "+ string(textm));
draw_text(x+300,y-25,"GOLD LEFT: "+string(leftGold)+ "/"+string(global.goldCount));