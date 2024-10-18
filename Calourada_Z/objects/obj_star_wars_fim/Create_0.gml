// Texto a ser exibido
text_lines = [
    "Nos vemos no capítulo 2: O retorno do mal",
    "",
    "",
    "",
    "",
    "",
    "Som e História: Oberon Inácio, Caio Ricardo, Ebert Júlio e Kauã Rodrigo",
    "Arte: Caio Ricardo e Ebert Júlio",
    "Desenvolvedor: Kauã Rodrigo e Ebert Júlio",
    "Criado e Dirigido por: os boys",
]


// Espaçamento entre linhas de texto
line_spacing = 45;

// Posição inicial do texto (abaixo da tela)
text_y = room_height + (array_length(text_lines) * line_spacing);

// Velocidade de rolagem do texto
scroll_speed = 0.4;

audio_play_sound(som_historia,1, false);