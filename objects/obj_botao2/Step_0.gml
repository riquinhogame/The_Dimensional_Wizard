if(entrou)
{
    image_xscale = lerp(image_xscale,2.4,0.14)
    image_yscale = lerp(image_yscale,1.1,0.14)
}
else {
    image_xscale = lerp(image_xscale,1.6,0.14)
    image_yscale = lerp(image_yscale,1.2,0.14)
}

if(mouse_check_button_pressed(mb_left))
{
    var _par = instance_create_depth(0,0,depth-100000000,obj_transicao)
    _par.rm = rmm
}