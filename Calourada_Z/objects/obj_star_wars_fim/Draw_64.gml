// Cor do texto
draw_set_color(c_white);

// Fonte do texto
draw_set_font(font_star_wars);

// Número de linhas de texto
var num_lines = array_length(text_lines);

// Itera sobre cada linha de texto na ordem correta
for (var i = 0; i < num_lines; i++) {
    var line = text_lines[i];
    
    // Calcula a posição Y atual para a linha de texto
    y = text_y - (i * line_spacing); // Ajuste o espaçamento entre as linhas conforme necessário
    
    // Calcula a escala para dar o efeito de perspectiva
    var scale = 1 - (y / room_height);
    
    // Desenha a linha de texto com transformação de escala
    if (scale > 0) {
        // Calcula a largura da linha de texto
        var line_width = string_width(line) * scale;
        
        // Calcula a posição X para centralizar a linha
        var x_ = (room_width / 2) - (line_width / 2);
        
        draw_text_transformed(x_, y, line, scale, scale, 0);
    }
}

// Atualiza a posição do texto
text_y -= scroll_speed;

// Desenha o texto "Para pular pressione Q" no canto inferior direito da tela
draw_set_color(c_yellow); // Define a cor amarela
draw_set_font(font_dialogo); // Define a fonte do texto (substitua "font_arial" pela sua fonte desejada)
draw_text(950, 700, "Para sair pressione Q");

// Reseta as configurações de fonte e cor
draw_set_font(-1);
draw_set_color(-1);
