image_alpha -= 0.2

if(image_alpha <= 0.04)
{
    room_goto(rm)
    
    instance_destroy()
    persistent = false
    
}
