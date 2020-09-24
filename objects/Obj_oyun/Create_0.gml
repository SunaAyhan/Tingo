score = 0;
lives = 1;
draw_texture_flush();
if !gpu_get_alphatestenable()
    {
    gpu_set_alphatestenable(true);
    gpu_set_alphatestref(128);
    }
gpu_set_blendenable(true);