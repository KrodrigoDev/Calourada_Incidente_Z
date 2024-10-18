if !instance_exists(inst_40DB7E97) {

	trans = instance_create_layer(0,0, layer, obj_transicao);
	
	trans.pos_x = 0
	trans.pos_y = 0
	trans.destino = rm_fim;
	audio_stop_all()
	
	instance_destroy(obj_personagem)
	instance_destroy(obj_jogo)
}
