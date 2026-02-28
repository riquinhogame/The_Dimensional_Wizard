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
        audio_play_sound(snd_orbe,1,0,0.9,0,random_range(0.8,1.2))
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
        audio_play_sound(snd_orbe,1,0,0.3,0,random_range(0.4,0.6))
        aplica_efeito_brilho(.3)
    }
    

    
}