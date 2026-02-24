if(global.dimen) exit



switch (estado) {
	
    case "inicio" :
        
    if(!tielez)
    {
        if(place_meeting(x,y,obj_mini_orbe))
        {
            tielez = true
            tele = true
            
            if(instance_exists(obj_player))
            {
                obj_player.x = x
                obj_player.y = y
            }
            
            if(instance_exists(obj_orbe))
            {
                obj_orbe.timer = 5

            }
            
            efeito()
            instance_destroy(obj_mini_orbe)
        }
    }
    
    if(!tele) return
        
    if(tielez)
    {
        image_alpha = lerp(image_alpha,0,0.09)
        
    }
        
    if(image_alpha <= 0.07)
    {
        timer--
        tele2 = true
    }
        
    if(timer <= 0)
    {
        image_alpha = lerp(image_alpha,8,0.2)
    }
        
    if(image_alpha >= 0.92 and tele2 == true)
    {   
        efeito()
        tielez = false
        image_alpha = 1
        tele = false
        tele2 = false
        timer = 140

    }
     
        
    break;
    
}
