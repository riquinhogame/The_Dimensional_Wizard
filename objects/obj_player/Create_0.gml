//spawnando o troca dimension
inicia_squash()
audio_stop_all()
audio_play_sound(snd_musica,0,1,0.8)


//criando as variaveis do player

//variaveis de movimento e gravidade
velh        = 0
velv        = 0
max_velh    = 1.1
max_velv    = 4.4
grav        = 0.2
chao = noone


//variaveis dos inputs
right   = noone
left    = noone
up      = noone
down    = noone
jump    = noone
troca   = noone

//variaveis de estados do player
estado = noone


//lista de colisoes do player
colid_list = [obj_colisao_teste,obj_grass1,obj_colisao_teste_1]

//variaveis de escala da imagem do player
dir = 1

//variaveis relacionadas a orbe
orbe = noone
usa_orbe = false

mask_index = spr_player_idle


///////////////////////////////////////////////////////////////////////////////////////////////
/// ///////////////////////////////////////////////////////////////////////////////////////////

//funçoes do player

pega_inputs = function ()
{   
    //definindo e setando controle para a direita(right)
    right = keyboard_check(ord("D")) or keyboard_check(vk_right)
    
    //fazendo o mesmo para a esquerda
    left = keyboard_check(ord("A")) or keyboard_check(vk_left)
    
    //fazendo o mesmo so que para o boato de pulo
    jump = keyboard_check(vk_space) or keyboard_check(ord("W"))
    
}

//aplicando a velh e velv
move = function ()
{
    //usando o move_and_colide para facilitar a colisao na horizontal
    move_and_collide(velh,0,colid_list,12)
       
    //fazendo os mesmo na vertical
    move_and_collide(0,velv,colid_list,24)
    
}

//checando o chao 
checa_chao = function ()
{
    //checnado se eu estou no chao
    //se eu estiver colidindo vai retornar true caso contrario vai retornar false
    chao = place_meeting(x,y + 1 ,colid_list)
}



//aplicando a gravidade
aply_grav = function ()
{
    
    //antes de aplicar a grav devo conferir se estou no chao ou nao
    checa_chao()
    
    
    //definindo a minha velh
    //eu vou subtrair a right com left, pois left e negativo entao se for left eu vou para a esquerda
    //se for right vou para a direita positivo
    velh = (right - left) * max_velh
    

    
    //aplicando a minha grav se eu nao estiver tocando no chao
    if(!chao)
    {   
        //minha velv vai somar com a grav causando a gravidade do player
        velv += grav
    }
    else {
        //caso contrario eu so deixo que a minha velv é 0 pois nao esta sendo usada
    	velv = 0
        
        //garantindo que o player nao entre no chao e deixando arredondado o x e o y para evitar problemas
        y = round(y)
        x = round(x)
        
        //aproveitando a logica se eu estou no chao
        //se eu apertei o botao de pulo
        if(jump)
        {   
            //o player vai subir
            velv -= max_velv
                
        }
        
    }
    
    //limitando a minha velv para caso cair a grav nao fique extrapolada
    //tambem limitando tanto para cima e para baixo
    velv = clamp(velv,-max_velv,max_velv)
}

//ajustando a escala da imagem
ajusta_escala = function ()
{
    if(velh !=0 ) dir = sign(velh)
}

troca_sprites = function (_spr = spr_player_idle)
{
    if(sprite_index != _spr)
    {
        sprite_index = _spr
        image_index = 0
    }
}



efeito_troca = function ()
{   
    troca = keyboard_check_pressed(ord("Z"))
    
    if(troca)
    {
        global.dimen = !global.dimen
    }
    
    
    if(global.dimen)
    {   
        
        
        gpu_set_blendmode(bm_add)
        
        if(velh == 0)
        {
            instance_create_layer(x,y,layer,obj_rastro_player_t_1)
        }
        
        if(velh != 0 or velv != 0)
        {
            instance_create_layer(x,y,layer,obj_rastro_player_t)
        }
        
        grav = 0.17
        
    }
    else {
        grav = .2
    	gpu_set_blendmode(-1)
    }
    
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////

//Estados Do Player

estado_parado = function ()
{   

    
    troca_sprites(spr_player_idle)
    
    if(right xor left)
    {
        estado = estado_move
    }
    
    if(velv != 0)
    {
        estado = estado_pulo
    } 
    
    if(jump)
    {
        audio_play_sound(snd_jump,1,0,1,noone,random_range(0.9,1.3))
        estado = estado_pulo
        efeito_squash(1.3,1.5)
    }
    
}

estado_move = function()
{   
    ajusta_escala()
    
    troca_sprites(spr_player_move)
    
    if(velh == 0 and velv == 0)
    {
        estado = estado_parado
    }
    
    if(velv != 0)
    {
        estado = estado_pulo
    }
    
    if(jump)
    {
        audio_play_sound(snd_jump,1,0,1,noone,random_range(0.9,1.3))
        estado = estado_pulo
        efeito_squash(1.3,1.5)
    }
    
}


estado_pulo = function()
{   
    
    
    ajusta_escala()

       
    troca_sprites(spr_player_jump_air)
    
    if(chao)
    {
        estado = estado_parado
    } 
    
}



//metodo para eu poder usar a orbe
usando_orbe = function()
{
    var _click = mouse_check_button_pressed(mb_left)
    
    //so posso usar a orbe se eu nao to usando ela
    if(!usa_orbe)
    {
        //codigo para usar o orbe
        //checando se o player clicoi
        if(_click)
        {
            usa_orbe = true

        }
    }
    else {
    	//o orbe esta sendo usado
        orbe.usas_orbe()
    }
}

//metodo para segurar o orbe
segura_orbe = function ()
{
    if(!orbe) exit
    
    usando_orbe()
    
    //ajustando o tamanho do orbe
    orbe.image_xscale = 0.7
    orbe.image_yscale = 0.7
    
    //ajustando a posiçao do orbe
    var _len = point_distance(8 * dir,16,-12 *dir,8)
    
    //achando a direçao
    var _dir = point_direction(8 * dir,16,-12 * dir,8)
    
    //achando o x
    var _x = x + lengthdir_x(_len,_dir) 
    
    //achando o y
    var _y = y + lengthdir_y(_len,_dir)
    
    //aplicando tudo
    
    orbe.x = lerp(orbe.x,_x,0.07)
    orbe.y = lerp(orbe.y,_y,0.07)
    orbe.depth = depth - 1
    

}


//criando o orbe
orbe = instance_create_depth(x,y,depth, obj_orbe)



//ativando o estado
estado = estado_parado
