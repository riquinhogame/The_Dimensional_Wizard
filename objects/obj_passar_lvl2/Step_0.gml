
if(global.pontos >= 4)
{
    
    randomise()
    
    var _x = x + random_range(-60,60)
    var _y = y + random_range(-105,105)
    
    
    var part  = instance_create_depth(_x,_y ,depth - 100000,obj_particula2)
    var part2  = instance_create_depth(_x,_y ,depth - 100000,obj_particula2)
    var part3  = instance_create_depth(_x,_y ,depth - 100000,obj_particula2)
    var part4  = instance_create_depth(_x,_y ,depth - 100000,obj_particula2)

    part.image_blend  = c_purple
    part2.image_blend = c_purple
    part3.image_blend = c_purple
    part4.image_blend = c_purple
    
    
    
    
    if(place_meeting(x,y,obj_player))
    {
        
        var part99 = instance_create_depth(0,0,depth - 10000,obj_transicao)
        part99.rm = roomm
        
    }
}