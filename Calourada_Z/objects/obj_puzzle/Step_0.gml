#region capturar digitos
if !instance_exists(obj_transicao) {
	if (string_length(keyboard_string)<limit) 
	    message = keyboard_string;
	else
	    keyboard_string = message;
}

#endregion

#region ocultando personagem e hud
	 obj_jogo.visible = false;
	 obj_personagem.visible = false;
#endregion

#region Verificação da resposta

if keyboard_check_pressed(vk_enter) and !instance_exists(obj_transicao){
	

	// objeto transição 
	var trans = instance_create_layer(0,0,layer, obj_transicao)

	// Definir a cor de fundo para a camada de fundo
	var bg_layer_id = layer_background_get_id("Background");
	
	
	// alterando a cor depedendo da resposta e atribuindo penalidade
	if string_lower(message) == string_lower(resolce) {
		layer_background_blend(bg_layer_id, c_green);
		global.bullets += 3;
	} else {
		
		layer_background_blend(bg_layer_id, c_red);
		
		 if (global.life[global.index_life] > 0) {
            global.life[global.index_life] -= 1;
        } else {
            global.index_life -= 1;
			global.life[global.index_life] -= 1;
        }
		
	}
	
	
	// saindo do puzzle
	trans.destino = global.niveis[global.nivel_atual];
	trans.pos_x = global.ultima_posi[0];
	trans.pos_y = global.ultima_posi[1];
	
	instance_destroy()
 }
	
#endregion