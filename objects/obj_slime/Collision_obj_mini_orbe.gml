repeat (irandom_range(10,70)) {
	
    var part = instance_create_depth(x,y,depth - 100,obj_particula)
    part.direction = random(359)
    part.speed = 3
}

obj_orbe.timer = 5
instance_destroy(other)
instance_destroy()