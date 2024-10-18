#region Dialogo

var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();

var xx = 130;
var yy = gui_altura - 140;

// Desenhar retângulo branco (com borda)
draw_set_color(c_white);
draw_rectangle(xx - 2, yy - 2, gui_largura - 98, gui_altura + 2, 0);

// Desenhar retângulo preto (sem borda)
draw_set_color(c_black);
draw_rectangle(xx, yy, gui_largura - 100, gui_altura, 0);

// Desenhar texto
draw_set_font(font_dialogo);
draw_set_color(c_white);

var texto_atual = string_copy(texto[index], 0, index_letra);

if (index_letra < string_width(texto[index])) {
    index_letra += 0.2;	
}

draw_set_halign(fa_center);
draw_text((gui_largura / 2), yy + 50, texto_atual);
draw_set_halign(-1);

draw_set_font(-1);
draw_set_color(-1);

#endregion
