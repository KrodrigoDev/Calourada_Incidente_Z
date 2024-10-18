#region Definição  iniciais 

velh = 0; // horizontal
velv = 0; // vertical 

vel = 3; 
grav = .3; // gravidade
vel_jump = 5.5;

// visibilidade do player ao sofrer dano
alpha = 0;
color = c_white;

// troca de sprites
image_speed = 0.6;

state = player_state_free;


global.angulo_player = 1;

#endregion

dano = false;
tempo_dano = room_speed * 0.5;
timer_dano = 0;

inv_tempo = room_speed * 1;
inv_timer = 0;
