if  !global.matou_alice {
	image_xscale = global.angulo_player;

if (conversou == 0) and !global.desbloqueou_mouse {
    texto = [
    "Alice: Que bom que você não se transformou em um deles.\n Meu nome é Alice, estive fugindo dessas coisas por um tempinho.",
    "Alice: Esses bichos surgiram do nada. Têm uma aparência igual \n à de um zumbi  e, caso te mordam, você vai virar um deles.",
    "Alice: Bem, estamos um pouco sem tempo agora, mas eu adoraria \n conhecer o nerdzinho do primeiro período.",
    "Alice: Te encontro no subsolo? Lá é um dos únicos \n locais seguros da faculdade.",
    "Alice: Ah, quase ia me esquecendo \n tome este conjunto de mouses, jovem gafanhoto.",
	"Alice: Agora vá e salve o mundo!"
	];
} else {
    texto = ["Alice: Já lhe dei tudo que eu tenho! Agora vá."];
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
				global.desbloqueou_mouse = true;
                global.bullets += 1
            }
			
        }
		
    }
	
}

} 
	
	
if global.matou_pro_v {
	instance_destroy(obj_porta_boss);
}
