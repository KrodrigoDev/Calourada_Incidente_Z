
function scp_state_palpative(){
	
	// mantendo o sprite inicial após uma troca de estado
	sprite_index = spr_palpatine;
	
	// deixando o eixo igual ao do player
	image_xscale = global.angulo_player;
	
#region morrendo 
	if life <= 0{
		
		
			if  not instance_exists(obj_dialogo) {
				var dialogo = instance_create_layer(0, 0, "jogo", obj_dialogo);
		
				texto = ["Palpatine: Nnnnão, maldito seja Marx!!", "Palpatine: Algum dia ainda vou me vingar de todos vocês"]
		
		        for (var i = 0; i < array_length(texto); i++) {
		            array_push(dialogo.texto, texto[i]);
				}
			}
			
			audio_stop_all();
		instance_destroy();
		
		audio_stop_sound(som_boss_figth)
			
		audio_play_sound(som_amb,0,true)
	}
#endregion
	
#region necromante
	// pensar em implementar ou não
#endregion

#region matendo distância 
	if distance_to_object(obj_personagem) < 7{
		x = irandom_range(20,700)
	}
 #endregion
 
 #region troca de estado

    if distance_to_object(obj_personagem) < 70 and bullets > 0 {
        image_index = 0;
        state = palpatine_shoot;
    }
	
	
	if !global.matou_alice  and instance_number(obj_dialogo) != 0 {
		image_index = 0;
        state = palpatine_shoot;
		matou = true;
	}

	
 #endregion
	
}

function palpatine_shoot(){
	
		sprite_index = spr_palpatine_shoot;
    
	    if image_index >= image_number - 0.5 {
		
			with (instance_create_layer(x, y + 40, "jogo", obj_compasso)) {
	             speed = 2;
				 atirar = global.angulo_player == 1 ? -1 : 1;
	             direction = -90 + 90 * atirar;
	             image_angle = direction;
			}
			state = scp_state_palpative;
		
	    }

}



