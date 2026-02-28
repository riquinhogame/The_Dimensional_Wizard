    randomise()
    
    var _x = x + random_range(-27,27)
    var _y = y + random_range(-17,27)
    

    instance_create_depth(_x,_y ,depth - 100000,obj_particula2)
    instance_create_depth(_x,_y ,depth - 100000,obj_particula2)
    instance_create_depth(_x,_y ,depth - 100000,obj_particula2)
    instance_create_depth(_x,_y ,depth - 100000,obj_particula2)


if(place_meeting(x,y,obj_mini_orbe))
{
    
        repeat (irandom_range(10,70)) {
	
            var part6 = instance_create_depth(x,y,depth - 100,obj_particula)
            part6.direction = random(359)
            part6.speed = 5
        }
    
    obj_mini_orbe.speed = 8
    obj_orbe.timer = 20
}