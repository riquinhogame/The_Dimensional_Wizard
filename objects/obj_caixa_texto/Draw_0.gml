draw_self()

if(!desenhar_texto) exit

/*
draw_set_font(fnt_dialogo)

draw_set_halign(0)
draw_set_valign(0)

 */
//criando a margem do texto
var _marg = 4

//fazendo o texto voltar metade da sprite
var _x = x - sprite_width / 2 + _marg

//fazendo uma variavel para ajustar o y
var _y = y - sprite_height / 2

//criando uam variavel para a a larg
var _larg = (sprite_width * 10) - (_marg * 20)

//draw_text_ext_transformed(_x,_y,texto,60,_larg,.1,.1,0)
//draw_set_font(-1)


//criando o meu texto do scribble
var _txt = scribble(texto).starting_format("fnt_dialogo",c_white)

//ajustando a escala do texto
_txt = _txt.scale(.1)

//fazendo ele caber na caixa
_txt = _txt.wrap(sprite_width - _marg * 2)



//desenhando o texto do scribble
_txt.draw(_x,_y,typist)


