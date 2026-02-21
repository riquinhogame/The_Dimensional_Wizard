inicia_squash()
inicia_brilho()

criar = false
timer = 200

//metodo para usar o orbe

usas_orbe = function()
{   
    timer--
    
    if(!criar)
    {
        var mini_b = instance_create_depth(x,y,depth,obj_mini_orbe)
        mini_b.image_xscale = .5
        mini_b.image_yscale = .5
        criar = true
        efeito_squash(1.6,1.6)
        aplica_efeito_brilho(1.2)
    }
    
    if(timer <= 0)
    {
        criar = false
        obj_player.usa_orbe = false
        timer = 210

        aplica_efeito_brilho(.3)
    }
  
}