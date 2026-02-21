//alterando a posiçao x e y do viewport com base no valor do treme

if(global.treme > 0.1)
{
    var _x = random_range(-global.treme,global.treme)
    var _y = random_range(-global.treme,global.treme)
    
    view_set_xport(view_current,_x)
    view_set_yport(view_current,_y)
    
}
else {
	global.treme = 0
    view_set_xport(view_current,0)
     view_set_yport(view_current,0)
}

global.treme= lerp(global.treme,0,0.2)