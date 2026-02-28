         repeat (irandom_range(2,50)) {
        	
            var part = instance_create_depth(x,y,depth - random_range(-10,10),obj_particula)
            part.direction = random(359)
            part.speed = 1
            
        }
        
        instance_destroy()