
image_xscale = global.angulo_player;

if (conversou == 0) {
    texto = [
    "Moça Bonita: Você é realmente corajoso Marx, os corredores \n da faculdade só falam o seu nome",
    "Marx: Namora comigo?",
    "Moça Bonita: O quê?",
    "Marx: Nada não. Mas quem é você?",
    "Milena: Eu sou Milena, faço biomedicina e estou \n desenvolvendo a cura pra essa loucura",
	"Milena: Soube que você derrotou alguns dos zumbis e está tentando \n sair daqui eu só queria te dar isso, um mouse que explode\n vai te ajudar a derrotar os perigos futuros",
	"Milena: Eu o nomeei com o nome da melhor linguagem de programação",
	"Marx: Pyth...",
	"Milena: Isso, portugol!",
	"Marx: O que?",
    "Milena: Enfim, tenho que voltar ao trabalho, por favor \n vença e saia daqui, quero te ver lá fora!",
	"Marx: Pode deixar"
	];
} else {
    texto = ["Agora vá."];
}



// Verifica se o jogador está próximo e se não existe uma instância de diálogo
if (distance_to_object(obj_personagem) <= 25 and not instance_exists(obj_dialogo)) {

    if (keyboard_check_pressed(ord("Q"))) {

		global.pode_mover = false;
		
        var dialogo = instance_create_layer(0, 0, "jogo", obj_dialogo);
		dialogo.npc_objeto_dialogo = obj_npc_Alice;

        // Adiciona o texto ao diálogo
        for (var i = 0; i < array_length(texto); i++) {
            array_push(dialogo.texto, texto[i]);

            // Verifica se é a última fala e incrementa a variável conversou
            if (i == array_length(texto) - 1) and (conversou == 0) {
                conversou += 1;
				
				global.mouse_fogo = true;
			
            }
			
        }
		
    }
	
}

if global.matou_mike {
	instance_destroy(obj_porta_boss);
}


