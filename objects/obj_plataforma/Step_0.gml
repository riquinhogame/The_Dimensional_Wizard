if(global.dimen)
{
    image_alpha = 0
    mask_index = spr_vazio
}
else {
	image_alpha = 1
    mask_index = spr_plataforma
}


if(place_meeting(x,y - sprite_height/2,obj_player))
{
    
    efeito_squash(2.5,1.6)
    with (obj_player) {
    	velv -= max_velv * 50
    }
    
}


retorna_squash(.3)