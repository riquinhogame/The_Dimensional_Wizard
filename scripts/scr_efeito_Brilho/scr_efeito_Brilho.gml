
//iniciando o Efeito De Brilho iniciar No create
function inicia_brilho(_cor = c_white)
{   
    muda_cor        = _cor
    alpha_brilho    = 0
    xscale          = 1
    yscale          = 1
    dir             = 0
    
}

//usa no lugar do codigo onde vai iniciar de fato o efeito
function aplica_efeito_brilho(_alpha = 1,_cor = c_white)
{
    alpha_brilho = _alpha
    muda_cor = _cor
}

//colocar no step
function retorna_brilho(_qtd = .1)
{
    alpha_brilho = lerp(alpha_brilho,0,_qtd)    
}

//colocar em um draw
function desenha_brilho()
{   
    
    if(alpha_brilho > 0)
    {
        shader_set(sh_muda_cor)
        draw_sprite_ext(sprite_index,image_index,x,y,xscale ,yscale,image_angle,muda_cor,alpha_brilho)
        shader_reset()
    }

}
