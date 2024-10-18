function scp_state_professor_v() {
	
	obj_professor_v.sprite_index = spr_professor_v_idle;

    #region morreu
		
	if (life <= 0) {
		
		if  not instance_exists(obj_dialogo) {
			var dialogo = instance_create_layer(0, 0, "jogo", obj_dialogo);
		
			texto = ["Professor V: Você pode ter me derrotado, mas nunca \n vai conseguir escapar desse prédio!!"]
		
	        for (var i = 0; i < array_length(texto); i++) {
	            array_push(dialogo.texto, texto[i]);
			}
			

			instance_destroy();
			
			global.pode_mover = false;
			audio_stop_sound(som_boss_figth)
			
			audio_play_sound(som_amb,0,true)
			
			#region voltando 
				global.matou_pro_v =  true;
			#endregion
			
		}

  }
	
    #endregion

    #region mantendo distancia do player
	
    if (distance_to_object(obj_personagem) < 30) {
        var lugar = irandom_range(0, 2);
        x = lugares[lugar][0];
        y = lugares[lugar][1];
    }
	
    #endregion

    #region troca de estado
	
    // Vai gerar zumbi quando for par
    gerar_zumbi = irandom(99);

    if (gerar_zumbi % 2 == 0 && global.qtd_inimigos_fracos < 2 && !instance_exists(obj_dialogo)) {
        image_index = 0;
        state = prof_v_necromante;
    }
	
    #endregion
}

function prof_v_necromante() {
    obj_professor_v.sprite_index = spr_professor_v_fight;

    if (image_index >= image_number - 1) {
		
		locais = [ [346,384], [654,384] ];
		local = irandom_range(0,1);
		
        with (instance_create_layer(locais[local][0], locais[local][1], "jogo", obj_inimigo_fraco)) {
            // Adiciona mais código aqui, se necessário
        }

        state = scp_state_professor_v;
    }
}
