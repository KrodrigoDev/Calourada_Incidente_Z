
if keyboard_check_pressed(ord("Q")){

	var trans =  instance_create_layer(0,0,layer, obj_transicao);
	trans.destino = rm_menu;
	trans.pos_x = 31;
	trans.pos_y = 334;
	
}

if instance_exists(obj_jogo) {
	obj_jogo.visible = false;
}
