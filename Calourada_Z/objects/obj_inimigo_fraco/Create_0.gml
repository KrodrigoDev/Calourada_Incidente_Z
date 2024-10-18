#region Definições de vida 

life = 3;

image_speed = 0.3;

#endregion


#region Inicialização de Variáveis de Movimento

velh = 0;
velv = 0;
grav = .3;
vel = choose(1, -1);
andando = choose(true, false);

if (andando) {
    if (andando) {
        velh = choose(vel, -vel);
    } else {
        velh = 0;
    }
}

tempo_decidir_andar = room_speed * 3;


#endregion

#region visibilidade do player ao sofrer dano

alpha = 0;
color = c_white;

#endregion

#region pegando a quantidade de zumbis por sala 

global.qtd_inimigos_fracos = instance_number(obj_inimigo_fraco);
#endregion