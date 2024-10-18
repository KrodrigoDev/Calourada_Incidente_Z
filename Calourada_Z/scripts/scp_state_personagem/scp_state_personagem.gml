
function player_state_free(){
	
 #region Controles

    // Adicionando a variável 'pode_se_mover' nos controles
    if (global.pode_mover) {
        input_left = keyboard_check(ord("A"));
        input_right = keyboard_check(ord("D"));
        input_jump = keyboard_check(ord("W"));
        input_stap = mouse_check_button_pressed(mb_right);
        input_shoot = mouse_check_button_pressed(mb_left);
		
    } else {
        input_left = false;
        input_right = false;
        input_jump = false;
        input_stap = false;
        input_shoot = false;
    }

    #endregion

// Códigos do Ebert júlio

#region Plano Cartesiano pra controlar as posições X e Y

var _chao = place_meeting(x, y +1, obj_colisao);

var _left, _right, _jump;

_left = input_left;
_right =input_right;
_jump = input_jump

velh = (_right - _left) * vel;

#endregion


#region Checando o pulo e impondo gravidade
if (_chao) {
	
	if (_jump) {
		velv = -vel_jump;
	}
	
	if (velh !=  0) {
		sprite_index = spr_personagem_walk;
		image_xscale = sign(velh);
		
		global.angulo_player = image_xscale;
	} else {
		sprite_index = spr_personagem_idle;
	}
	
} else {

	velv += grav;
	
	if (velh !=  0) {
		sprite_index = spr_personagem_jump;
		image_xscale = sign(velh);
		global.angulo_player = image_xscale;
	} else {
		sprite_index = spr_personagem_jump;
	}
	
}

#endregion


#region Colisão Horizontal

//Checando o contato com a parede
var _col = instance_place(x + velh, y, obj_colisao)

//Se colidir o objeto gruda
if (_col) {
	
	//Checando se ta indo para direita
	if (velh > 0) {
		//Grudando na parte esquerda da parede
		x = _col.bbox_left + (x - bbox_right);
	}
	
	//Checando se ta indo pra esquerda
	if (velh < 0) {
		x = _col.bbox_right + (x - bbox_left);
	}
	
	//Se eu colidir eu paro
	velh = 0;
}		

x += velh;

#endregion


#region Colisão Vertical

var _col = instance_place(x, y + velv, obj_colisao)

if(_col) {
	if (velv > 0) {
		//Indo pra baixo
		y = _col.bbox_top + (y - bbox_bottom);
	} 
	
	if (velv < 0) {
		//Indo pra cima
		y = _col.bbox_bottom + (y - bbox_top);
	}
	
	velv = 0;
}

y += velv;

#endregion


#region troca de estado

if  input_shoot and global.bullets > 0 and global.desbloqueou_mouse {
	image_index = 0;
	state = player_shoot_atk;
}


if  input_stap and velh == 0 { 
	image_index = 0;
	state = player_stap_atk;
}

if  global.life[0] == 0 {
    image_index = 0
	state = player_dead;
	
}

if (place_meeting(x, y, obj_inimigo_fraco)) or (place_meeting(x, y, obj_professor_v)) and global.life[0] != 0 {
	image_index = 0
	state = player_damage;
}

#endregion
	
}


function player_shoot_atk() {
	
    sprite_index = spr_personagem_shoot;
    
    if image_index >= image_number - 1{
		
		with (instance_create_layer(x, y-47, "jogo", obj_shoot)) {
             global.bullets--;
             speed = 4;
             direction = -90 + 90 * other.image_xscale;
             image_angle = direction;
		}
		
		state = player_state_free;
		
    }

}

function player_stap_atk() {
	
	if global.uso_notebook {
		sprite_index = spr_personagem_notebook;
	} else {
		sprite_index = spr_personagem_stap;
	}
	
	if (!instance_exists(obj_hit_box)) {
		instance_create_layer(x+(37 * image_xscale), y -27, "jogo", obj_hit_box)
	}
    

    if image_index >= image_number - 0.5  {
		
		if instance_exists(obj_hit_box) instance_destroy(obj_hit_box);
		
		state = player_state_free;
		
    }

}

function player_dead() {
        velv += grav;
        
   
        // Inicia a animação de morte
        sprite_index = spr_personagem_dead;
        velh = 0;
        
        if (image_index >= image_number - 1) {
	
				state = player_state_free;
        }
		
	
		
}


function player_damage(){
	sprite_index = spr_personagem_damage;
    
	if  global.life[0] == 0 {
	    image_index = 0
		state = player_dead;
	
	}
	
    if image_index >= image_number - 0.5{
		x = x - 25
		state = player_state_free;
    }
	
}