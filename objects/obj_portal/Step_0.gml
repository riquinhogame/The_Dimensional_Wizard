if(place_meeting(x,y,obj_player))
{
    var part = instance_create_depth(0,0,depth - 10000000000000,obj_transicao)
    part.rm = Rm_8
    part.image_alpha = 1.7
}