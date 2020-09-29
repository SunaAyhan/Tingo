score = 0;
lives = 1;
gorunmezlik=0;


draw_texture_flush();
draw_text(668,24,string(gorunmezlik));
if !gpu_get_alphatestenable()
    {
    gpu_set_alphatestenable(true);
    gpu_set_alphatestref(128);
    }
gpu_set_blendenable(true);
global.IsPassed=0;
global.MusicState = GetSettingsSound();