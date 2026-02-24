
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
        