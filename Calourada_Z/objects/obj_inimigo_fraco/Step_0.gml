#region MOVIMENTAÇÃO E COLISÃO

var _chao = place_meeting(x, y + 1, obj_colisao);
	
	
	if (_chao) { 
					
		    tempo_decidir_andar -= 1;
			
		    if (tempo_decidir_andar <= 0) {
		        andando = choose(true, false);
				
				
		        if (andando) and global.pode_mover{	
		            velh = choose(vel, -vel);
		        } else {
		            velh = 0;
		        }

		        tempo_decidir_andar = room_speed * 3;
		    }

	    if (velh != 0) {
	        image_xscale = sign(velh);
	    }

	    if (place_meeting(x + velh, y, obj_colisao)) {
	        velh *= -1;
	    }

	    var pode_cair = true;

	    if (pode_cair && !place_meeting(x + velh, y + 1, obj_colisao)) {
	        velh *= -1;
	    }
	 
	} else { 

	    velv += grav;

	    if (velh != 0) {
	        image_xscale = sign(velh);
	    }
	}



#endregion

#region COLISÃO HORIZONTAL

var col_horizontal = instance_place(x + velh, y, obj_colisao);
if (col_horizontal) {
    // Correção da posição para evitar que o inimigo suma
    if (velh > 0) {
        x = col_horizontal.bbox_left - bbox_right - 1;
    } else if (velh < 0) {
        x = col_horizontal.bbox_right - bbox_left + 1;
    }
    velh = 0;
}

x += velh;

#endregion

#region COLISÃO VERTICAL

var col_vertical = instance_place(x, y + velv, obj_colisao);
if(col_vertical) {
    if (velv > 0) {
        y = col_vertical.bbox_top - bbox_bottom;
    } else if (velv < 0) {
        y = col_vertical.bbox_bottom - bbox_top;
    }
    velv = 0;
}

y += velv;

#endregion

#region TROCAS DE SPRITES 

// player andando
if (velh != 0) {
    sprite_index = spr_inimigo_fraco_walk;
} 

// player parado (melhorar depois por conta dos tiros)
if (velh == 0) {
    sprite_index = spr_inimigo_fraco_idle;
}

#endregion

#region Vida 

// Verifica se o zumbi ainda está vivo
if (life <= 0) {
	
    // Chance de 35% de dropar um item de balas
    if (random(100) < 35) and global.desbloqueou_mouse {
		
        // Cria um item de balas na posição do zumbi
        instance_create_layer(x, y-10, "jogo", obj_bullets_mouse);
    }
    
    // Destroi o zumbi
    instance_destroy();
	
	global.qtd_inimigos_fracos -= 1; // vai diminuir a quantidade total de inimigos fracos no mapa
}


#endregion

#region Colisão com ataque

if (place_meeting(x, y, obj_shoot)) or (place_meeting(x, y, obj_hit_box)) {
	
    if (alpha == 0) {
        alpha = 1;
    }
}

// Reduza gradualmente o alpha para criar o efeito de flash
alpha = lerp(alpha, 0, 0.1);


#endregion

