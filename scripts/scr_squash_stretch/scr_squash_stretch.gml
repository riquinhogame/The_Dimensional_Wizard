function inicia_squash()
{
    xscale = 1
    yscale = 1
}

 function efeito_squash(_x = 1, _y = 1)
{
    xscale = _x
    yscale = _y
}

function retorna_squash(_qtd = .1)
{
    
    xscale = lerp(xscale,1,_qtd)
    yscale = lerp(yscale,1,_qtd)
    
}

function  desenha_squash()
{
     draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,image_angle,image_blend,image_alpha)
}