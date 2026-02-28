
if(hspeed != 0) dir = sign(hspeed)

switch (estado) {
	
    case "andando" :
        
    if(global.dimen)
    {
        timer = 40

    }
  
    timer--
        
    if(timer <= 0)
    {
        efeito_squash(1.1,1.1)
        timer = 40
    }
        
    break;
    

}

retorna_squash(.06)
if(place_meeting(x + 1 * dir,y - 2,all))
{
    hspeed *= -1
    image_xscale *= -1
}
        
