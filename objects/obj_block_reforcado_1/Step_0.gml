if(place_meeting(x,y,obj_mini_orbe))
{   

            
        repeat (irandom_range(10,70)) {
        	 var part = instance_create_depth(x,y,depth - 100,obj_particula)
                part.direction = random(359)
                part.speed = 3

    
        colidi = true
        instance_destroy(obj_mini_orbe)
        
        
    }
    

}


if(global.pontos >= 4)
{
    
        repeat (irandom_range(70,190)) {
        	 var part = instance_create_depth(x,y,depth - 100,obj_particula)
                part.direction = random(359)
                part.speed = 8

    

        
        
    }
    
    
    
    instance_destroy()
}