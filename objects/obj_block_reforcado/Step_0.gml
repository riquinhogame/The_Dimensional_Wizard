if(place_meeting(x,y,obj_mini_orbe))
{   
    if(obj_mini_orbe.speed == 8)
    {
        
        repeat (irandom_range(10,70)) {
        	 var part = instance_create_depth(x,y,depth - 100,obj_particula)
                part.direction = random(359)
                part.speed = 3
        }
    
        colidi = true
        instance_destroy()
        
        
    }
    

}