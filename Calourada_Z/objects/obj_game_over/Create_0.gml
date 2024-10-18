
#region por conta do obj_jogo  e perosnagem
	
global.life = [2,2,2];
global.index_life = 2;
global.bullets = 10;	
obj_personagem.visible = false;
obj_jogo.visible = false;

global.pode_mover =  false;
audio_stop_all()

#endregion

#region definições do menu
titulo = "Fim de jogo"
opcoes = ["Reiniciar", "Retornar ao menu"]
tam_lista = array_length(opcoes)
index = 0
#endregion