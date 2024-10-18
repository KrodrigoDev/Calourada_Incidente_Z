if interagivel {
	
		if distance_to_object(obj_personagem) == 0 and keyboard_check_pressed(ord("Q")){
	
			var trans =  instance_create_layer(0,0,layer, obj_transicao);
	
			obj_jogo.visible = false;
	
			trans.destino = destino 
			trans.pos_x = pos_x;
			trans.pos_y = pos_y;
			
			global.ultima_posi = [obj_personagem.x,obj_personagem.y];
	
	} 
}


if instance_exists(obj_professor_v) or instance_exists(obj_inimigo_fraco) or instance_exists(obj_nailton) {
	interagivel = false;
} else {
	interagivel = true;
}


