texto = ""

//ajustando o efeito de wave
scribble_anim_wave(1,.2,.1)
typist = scribble_typist()
typist.in(.6,10)

desenhar_texto = false
sendo_destruido = false 
image_alpha = 0
image_xscale = .4

iniciando = function ()
{
    image_xscale = lerp(image_xscale,2.3,.2)
    image_alpha = lerp(image_alpha,.8,.2)

    //fazendo ele subir um poquinho
    y = lerp(y,ystart - 30,0.2)
    
    //checando se o y chegou proximo suficiente da posiçao final dele
    if(y <= ystart - 29)
    {
        desenhar_texto = true
    }
}

finalizando = function ()
{
    if(sendo_destruido)
{
    image_alpha = lerp(image_alpha,0,0.2)
    
    image_xscale = lerp(image_xscale,0,0.2)
    
    image_yscale = lerp(image_yscale,0,0.2)
   
     y = lerp(y,ystart + 30,.2)
    
    desenhar_texto = false
    }
    
    if(image_xscale <= 0.1)
    {
        instance_destroy()
    }
}