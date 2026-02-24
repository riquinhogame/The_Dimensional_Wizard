
inicia_squash()
inicia_brilho()

efeito_squash(2.1,2.1)

colid_list = [obj_colisao_teste,obj_grass1,obj_dirt1]

dir = point_direction(x,y,mouse_x,mouse_y)
direction = dir
speed  = 4.5

timer = 230


sumindo = function ()
{
    timer --

    if(timer <= 0)
    {
        efeito_squash(1.1,1.1)
        
        aplica_efeito_brilho(1)
        
        instance_destroy()
    }
}

sumindo2 = function ()
{
    if(place_meeting(x,y,colid_list))
    {   
        

         repeat (irandom_range(2,50)) {
        	
            var part = instance_create_depth(x,y,depth - random_range(-10,10),obj_particula)
            part.direction = random(359)
            part.speed = 1
            
        }
        
        instance_destroy()
    }
}