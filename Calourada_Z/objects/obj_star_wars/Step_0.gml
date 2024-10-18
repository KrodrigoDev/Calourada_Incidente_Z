
if keyboard_check_pressed(ord("Q")){

	var trans =  instance_create_layer(0,0,layer, obj_transicao);
	trans.destino = rm_nivel_1;
	trans.pos_x = 31;
	trans.pos_y = 334;
	
	audio_stop_sound(som_historia); // Parar áudio
	instance_destroy()
	audio_play_sound(som_passagem,0,false)
}

if instance_exists(obj_jogo) {
	obj_jogo.visible = false;
}



