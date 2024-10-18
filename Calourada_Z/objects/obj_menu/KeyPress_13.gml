audio_play_sound(som_passagem,1,false)
var trans =  instance_create_layer(0,0,layer, obj_transicao);

trans.pos_x = 31;
trans.pos_y = 334;
if(index == 0){
	visible= false;
	

	trans.destino = rm_historia;

	
	// salvando a última posição do player
	global.ultima_posi = [31, 334]
	
}else if(index == 1){
	
	trans.destino = rm_creditos;
	
}else if (index == 2){
	
	game_end();
	
}

















