image_alpha -= 0.2

if(image_alpha <= 0.04)
{
    room_goto(rm)
     audio_stop_all()
    instance_destroy()
    persistent = false
    
}
