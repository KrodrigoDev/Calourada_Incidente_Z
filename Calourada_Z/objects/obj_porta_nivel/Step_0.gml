

if interagivel {
	
	// Verifica se o jogador está próximo da porta e pressionou a tecla "Q" para abri-la
	if distance_to_object(obj_personagem) <= 7 and keyboard_check_pressed(ord("Q")) and not instance_exists(obj_dialogo) {
		
	    // Verifica se não há mais inimigos fracos presentes
	    if global.qtd_inimigos_fracos <= 0 and !instance_exists(obj_porta_boss){
		
	        // Avança para o próximo nível
	        global.nivel_atual += 1;
		
			var trans =  instance_create_layer(0,0,layer, obj_transicao);
		
			// ocultando o obj_jogo
			obj_jogo.visible = false;
		
			trans.destino = global.niveis[global.nivel_atual];
			trans.pos_x = pos_x;
			trans.pos_y = pos_y;
			
			// salvando a última posição do player
			global.ultima_posi = [pos_x, pos_y]
		
	    } else {
		
	        // Se houver inimigos vivos, exibe uma mensagem informando que não é possível acessar outro nível
	        var texto = ["Não é possível acessar outro nível \n enquanto houver mortos-vivos ou sala de bosses a serem exploradas"];
			global.pode_mover = false;
			
	        // Cria uma instância de diálogo para exibir a mensagem
	        var dialogo = instance_create_layer(0, 0, "jogo", obj_dialogo);

	        // Adiciona o texto ao diálogo
	        for (var i = 0; i < array_length(texto); i++) {
	            array_push(dialogo.texto, texto[i]);
	        }
			
	    }
	}

}

if !instance_exists(obj_dialogo){
	 global.pode_mover = true;
}
