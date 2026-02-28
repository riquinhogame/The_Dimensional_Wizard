    randomise()
    
    var _x = x + random_range(-60,60)
    var _y = y + random_range(-105,105)
    

    var part  = instance_create_depth(_x,_y ,depth - 100000,obj_particula2)
    var part2  = instance_create_depth(_x,_y ,depth - 100000,obj_particula2)
    var part3  = instance_create_depth(_x,_y ,depth - 100000,obj_particula2)
    var part4  = instance_create_depth(_x,_y ,depth - 100000,obj_particula2)

    part.image_blend = c_gray
    part2.image_blend = c_gray
    part3.image_blend = c_gray
    part4.image_blend = c_gray




if(place_meeting(x,y,obj_mini_orbe))
{
    with (obj_mini_orbe) {
    	
        repeat (irandom_range(10,70)) {
	
        var part6 = instance_create_depth(x,y,depth - 100,obj_particula)
        part6.direction = random(359)
        part6.speed = 5
    }
        
        
        instance_destroy()
    }
}

if(global.pontos >= 4) instance_destroy()