#region cores usada
var texto = make_color_rgb(255, 255, 255); // Valores máximos para os componentes RGB
var texto_selecionado = c_yellow;
#endregion

#region Opções do menu

draw_set_font(font_menu);

var distancia = 50;

var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();

var x1 = gui_largura / 2;
var y1 = gui_altura / 2;



for (var i = 0;i < op_max;i++){
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	if(index == i){
		draw_set_color(texto_selecionado);
	}else{
		draw_set_color(texto);
	}
	
	draw_text(x1,y1 + (distancia * i) ,opcoes[i]);
}

draw_set_font(-1);

#endregion


#region Título

draw_set_font(font_titulos);

draw_set_color(texto);
draw_text(x1, y1 - 80, titulo);

draw_set_font(-1);

#endregion





