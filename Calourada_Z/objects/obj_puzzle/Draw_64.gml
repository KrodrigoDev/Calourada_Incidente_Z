#region Definição da fonte do puzzle

// Configurações para exibição do texto da quantidade de inimigos
draw_set_font(font_puzzle); // Alterar a fonte conforme necessário
draw_set_color(c_white); // Define a cor do texto como branco

#endregion

#region Definir variáveis da pergunta
var text_width = string_width(question);
var text_height = string_height(question);
#endregion

#region Desenhar pergunta
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(room_width / 2, room_height / 2 - text_height / 2, question);
#endregion

#region Definir variáveis da caixa de entrada
var input_width = 200;
var input_height = 32;
var input_x = room_width / 2 - input_width / 2;
var input_y = room_height / 2 + text_height / 2 + 10; // 10 pixels de espaço abaixo da pergunta
#endregion

#region Desenhar caixa de entrada
draw_set_color(c_white);
draw_rectangle(input_x, input_y, input_x + input_width, input_y + input_height, true);
#endregion


#region Desenhar texto na caixa de entrada
draw_self(); // Desenha o próprio objeto
draw_set_halign(fa_center);
draw_text(input_x + input_width / 2, input_y + input_height / 2, message + cursor);
#endregion

#region Resetar fontes e cores (puzzle)

// Resetar as configurações de fonte e cor
draw_set_font(-1);
draw_set_color(-1);

#endregion

