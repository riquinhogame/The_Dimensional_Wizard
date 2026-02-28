

if(place_meeting(x,y,obj_mini_orbe))
{
    global.pontos ++
    
        repeat (irandom_range(10,70)) {
        	 var part = instance_create_depth(x,y,depth - 100,obj_particula2)
                part.direction = random(359)
                part.speed = 6
        }
    
    
    instance_destroy()
}

