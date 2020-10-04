/// @desc Draw any previously-saved score

event_inherited();

if (global.savedScore != -1) { draw_text(drawPosX, y, string(global.savedScore)); }