event_inherited();

var saveData = string(global.Score);
show_debug_message("Triggering Cloud Save of highscore " + saveData);
global.cloudSaveID = cloud_string_save(saveData, "GoogPS Demo HighScore String");
