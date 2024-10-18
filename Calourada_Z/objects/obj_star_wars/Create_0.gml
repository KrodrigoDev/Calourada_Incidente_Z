// Texto a ser exibido
text_lines = [
    "O destino da faculdade está em suas mãos.",
    "e sair desse prédio.",
    "Vamos, Marx, você precisa se levantar",
    "Mas não estamos sozinhos nesta jornada.",
    "e agora cabe a nós descobrir o que aconteceu.",
    "O pânico se espalhou rapidamente,",
    "transformando alguns alunos em zumbis.",
    "envolveu os corredores da faculdade,",
    "Até que de repente, uma estranha fumaça",
    "a noite estava normal...",
    "uma festa que acontece a cada 6 meses,",
    "Durante a computaria na faculdade Izanami,",
    "Capítulo 1: Uma Nova Ameaça",
];


// Espaçamento entre linhas de texto
line_spacing = 45;

// Posição inicial do texto (abaixo da tela)
text_y = room_height + (array_length(text_lines) * line_spacing);

// Velocidade de rolagem do texto
scroll_speed = 0.4;

audio_play_sound(som_historia,1, false);