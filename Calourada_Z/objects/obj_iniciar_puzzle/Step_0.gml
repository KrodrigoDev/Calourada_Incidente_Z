if (distance_to_object(obj_personagem) <= 15) {
	
	#region ocultando personagem e hud
	 obj_jogo.visible = false;
	 obj_personagem.visible = false;
	#endregion
	
	#region criando transição para room do puzzle
	
    // Criação da instância de transição
    var trans = instance_create_layer(0, 0, layer, obj_transicao);
    
    // Configurar destino e posição de transição
    trans.destino = rm_puzzle;
   	trans.pos_x = global.ultima_posi[0];
    trans.pos_y = global.ultima_posi[1];
	
	
    // Salvar a última posição global
    global.ultima_posi = [x, y];
	

    var puzzle = instance_create_layer(0, 0, layer, obj_puzzle);
    
    // Passar informações de questão e resolução para o puzzle
    puzzle.question = question;
    puzzle.resolce = resolce;
	
	#endregion
    
    // Destruir a instância atual
    instance_destroy();
}
