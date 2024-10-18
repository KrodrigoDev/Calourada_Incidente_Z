/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Texto dos créditos
var text = ["Criado e dirigido por Kauã, Caio, Oberon e Ebert J,","como requisito avaliativo do 5º período da","Instituição Maurício de Nassau"];

// Configurando a fonte (certifique-se de ter uma fonte criada no seu projeto)
draw_set_font(font_menu); 
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Obtendo a largura e altura da tela
var screen_width = display_get_width();
var screen_height = display_get_height();

// Espaço entre as linhas (em pixels)
var line_spacing = 50; // Ajuste conforme necessário

// Desenhando cada linha de texto
var total_text_height = 0;
for (var i = 0; i < array_length(text); i++) {
    var text_height = string_height(text[i]); // Obtém a altura da linha atual
    total_text_height += text_height + line_spacing; // Atualiza a altura total do texto, adicionando o espaço entre as linhas
    draw_text(room_width / 2, room_height / 2 - total_text_height / 2 + i * (text_height + line_spacing), text[i]); // Desenha a linha atual com espaço entre as linhas
}


// Desenha o texto "Para pular pressione Q" no canto inferior direito da tela
draw_set_color(c_yellow); // Define a cor amarela
draw_set_font(font_dialogo); // Define a fonte do texto (substitua "font_arial" pela sua fonte desejada)
draw_text(1065, 700, "Pressione Q para voltar");

// Restaurando configurações padrão
draw_set_font(-1); 
draw_set_color(c_white);
