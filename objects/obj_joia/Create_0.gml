estado = "inicio"

image_xscale = .7
image_yscale = .7

timer = 140
tele = false
tielez = false
tele2 = false
a = image_alpha


efeito = function ()
{
    repeat (irandom_range(10,70)) {
    	
        var part = instance_create_depth(x,y, depth - 10,obj_particula)
        part.direction = random(359)
        part.speed = irandom_range(2,9)
        
    }
}

