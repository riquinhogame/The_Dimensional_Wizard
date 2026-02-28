image_alpha -= 0.16

if(image_alpha <= 0.03)
{
    room_goto(rm)

    instance_destroy()
    persistent = false
    
}
