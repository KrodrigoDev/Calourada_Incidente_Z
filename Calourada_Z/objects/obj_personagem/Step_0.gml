state()

#region Colisão com inimigo fraco

if (place_meeting(x, y, obj_inimigo_fraco) || place_meeting(x, y, obj_professor_v)) {
    if (alpha == 0) {
		
        if (global.life[global.index_life] > 0) {
            global.life[global.index_life] -= 1;
        }

        // Verificar se a vida no índice atual é zero
        if (global.life[global.index_life] <= 0 && global.index_life > 0) {
            global.index_life -= 1;
        }

        // Ative o efeito flash hit
        alpha = 1;
    }
}

// Reduza gradualmente o alpha para criar o efeito de flash
alpha = lerp(alpha, 0, 0.1);

#endregion


#region morreu
if global.life[0] <= 0{

	obj_jogo.visible = false;
		var trans = instance_create_layer(0,0,layer, obj_transicao)
		trans.pos_x = global.ultima_posi[0];
		trans.pos_y = global.ultima_posi[1];
		trans.destino = rm_game_over;
				
}
#endregion
