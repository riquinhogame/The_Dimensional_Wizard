//metodos do player
pega_inputs()
aply_grav()
move()
ajusta_escala()

//metodos do orbe
segura_orbe()
retorna_squash()

estado()


if(keyboard_check_pressed(ord("R")))
{
    var par = instance_create_depth(0,0,depth - 1000000,obj_transicao)
    par.rm = room
}


if(place_meeting(x,y,obj_colisao_desativa_k))
{
    global.dimen = false
}