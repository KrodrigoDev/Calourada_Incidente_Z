/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor







if mudei { // mudei de room
	
	alpha -= .01;

} else { // ainda não mudei
	
	alpha += .01;
	
}


if alpha >= 1 {
	
	
	room_goto(destino)

	
	if instance_exists(obj_jogo){
		obj_jogo.visible = true;
	}
	
	
	if instance_exists(obj_personagem) {
		// controlando a posição do player
		obj_personagem.x = pos_x;
		obj_personagem.y = pos_y;
		obj_personagem.visible = true;
	}
	
	
}


if mudei and alpha <= 0 {
	instance_destroy();
}





