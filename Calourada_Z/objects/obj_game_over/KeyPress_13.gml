// Criar a instância de transição e definir suas posições


// Configurar a visibilidade dos objetos
visible = false; // Tornar as letras invisíveis


// Definir o destino da transição com base no índice
if (index == 0) {

	var trans = instance_create_layer(0, 0, layer, obj_transicao);
	trans.pos_x = global.ultima_posi[0];
	trans.pos_y = global.ultima_posi[1];

	trans.destino = global.niveis[global.nivel_atual]
	
	
	if instance_exists(obj_palpatine){
		obj_palpatine.x = 658;

	}else {
		audio_play_sound(som_amb, 0, true)
	}
	
	instance_destroy()
	
} else if (index == 1) {

	game_restart()

}
