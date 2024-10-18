#region Munição e qtd de inimigos

global.bullets = 10; // quantidade de munição inicial (mouses no estoque)

global.matou_pro_v = false;
global.matou_mike = false;

#endregion

#region player

global.desbloqueou_mouse = false;

global.pode_mover = true;

global.uso_notebook = false;

global.mouse_fogo = false;

global.matou_alice = false;


#endregion

#region Câmera

target_ = obj_personagem;
width_ = camera_get_view_width(view_camera[0])
height_ = camera_get_view_height(view_camera[0])


#endregion


#region Niveis e outras coisas do cenario

global.nivel_atual = 0;

global.niveis = [rm_nivel_1, rm_nivel_2, rm_nivel_3, rm_nivel_4, rm_nivel_5, rm_nivel_6];

global.index_life = 2;  // index da vida
global.life = [2,2,2]; // vida padrão

global.ultima_posi = [31,334]


audio_play_sound(som_amb,2,true)



#endregion
