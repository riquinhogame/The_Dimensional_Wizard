//checando se eu colidi com o player
var _player = place_meeting(x,y,obj_player)

//se eu colidi com o player entao eu crio a caixa de dialogo
if(_player)
{
    //se eu ainda nao tenho caixa de dialogo
    if(!instance_exists(minha_caixa_dialogo))
    {
        //agora vou criar minha caixa de dialogo
        minha_caixa_dialogo =  instance_create_layer(x,y - 10,"decoracoes_obj",obj_caixa_texto)
        minha_caixa_dialogo.texto = texto
    }
  
}
else 
{
     
    if(instance_exists(minha_caixa_dialogo))
    {   
        
        with (minha_caixa_dialogo) sendo_destruido = true
        
        minha_caixa_dialogo = noone
        
        
        
        
    }
}


