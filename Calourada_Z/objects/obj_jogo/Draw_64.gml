
#region Coração

// Define as coordenadas iniciais para desenhar os corações
var coracao_x = 0;
var coracao_y = 0;

// Loop através do array de vidas
for (var i = 0; i < array_length_1d(global.life); i++) {
    var coracao_atual = global.life[i];

    // Desenha o coração de acordo com o valor da vida atual
    if (coracao_atual >= 2) {
        draw_sprite(spr_life, 0, coracao_x, coracao_y);
    } else if (coracao_atual <= 2 and coracao_atual > 0) {
        draw_sprite(spr_life, 1, coracao_x, coracao_y);
    } else if (coracao_atual <= 0) {
        draw_sprite(spr_life, 2, coracao_x, coracao_y);
    }

    // Atualiza as coordenadas para desenhar o próximo coração
    coracao_x += 80; // Ajuste a largura conforme necessário
}

#endregion

#region Definição da fonte

// Configurações para exibição do texto da quantidade de inimigos
draw_set_font(font_menu); // Alterar a fonte conforme necessário
draw_set_color(c_black); // Define a cor do texto como preto

#endregion

#region Qtd inimigos

// Define as coordenadas para a exibição da quantidade de inimigos
var qtd_inimigos_x = 120;
var qtd_inimigos_y = coracao_y + 150; // Posiciona abaixo dos corações

// Define a escala para o sprite (1.5 vezes maior em relação ao tamanho original)
var escala_x = 1.5;
var escala_y = 1.5;

// Desenha o sprite com a escala especificada
draw_sprite_ext(spr_cabeca_zumbi, 0, qtd_inimigos_x - 50, qtd_inimigos_y + 20, escala_x, escala_y, 0, c_white, 1);

// Exibe o texto com a quantidade de inimigos
draw_text(qtd_inimigos_x - 10, qtd_inimigos_y, ":" + string(global.qtd_inimigos_fracos));

#endregion

#region Munição

if (global.desbloqueou_mouse) {
    // Define as coordenadas para a exibição da quantidade de munição
    var municao_x = 120;
    var municao_y = coracao_y + 200; 

    // Desenha o sprite com a escala especificada
    var escala_x_muni = 2;
    var escala_y_muni = 3;
    draw_sprite_ext(spr_bullets_mouse, 0, municao_x - 80, municao_y - -5, escala_x_muni, escala_y_muni, 0, c_white, 1);

    // Exibe o texto com a quantidade de munição
    draw_text(municao_x - 10, municao_y, ":" + string(global.bullets));
}

#endregion


#region Resetar fontes e cores

// Resetar as configurações de fonte e cor
draw_set_font(-1);
draw_set_color(-1);

#endregion