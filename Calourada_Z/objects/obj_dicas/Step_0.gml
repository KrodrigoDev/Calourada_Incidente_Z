
if (distance_to_object(obj_personagem) <= 20 and not instance_exists(obj_dialogo)){
	
	if tocar {
		audio_stop_all();
		audio_play_sound(musica,1,true);
	}
	
    // Verifica se não há mais inimigos fracos presentes
    
            // Cria uma instância de diálogo apenas se não houver nenhum ativo
            var dialogo = instance_create_layer(0, 0, "jogo", obj_dialogo);

            // Adiciona o texto ao diálogo
            for (var i = 0; i < array_length(texto); i++) {
                array_push(dialogo.texto, texto[i]);
            }
            global.pode_mover = false; // Impede o movimento do jogador durante o diálogo
			visto = true;
        }


if keyboard_check_pressed(ord("Q")) and instance_exists(obj_dialogo) and visto {
   
   index++;
   if index >= array_length(texto){
		instance_destroy();
		global.pode_mover = true;
	} 
	
	
}
