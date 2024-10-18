
// Seguir suavemente o jogador
if !instance_exists(obj_dialogo){
	x = lerp(x, obj_personagem.x, 0.01);
}

image_xscale = global.angulo_player;

// Chance de arremesso
if (random(100) <= 1) {
    // Criar instância do objeto de arremesso
    var obj = instance_create_layer(x, y - 47, "jogo", obj_livro);
   
    
    // Ajustar a velocidade do objeto de arremesso
    obj.speed = 4;
    
    // Determinar a direção do arremesso
    var throw_direction = image_xscale == 1 ? -50 : 150;
    obj.direction = throw_direction * image_xscale;
    
    // Ajustar o ângulo da imagem do objeto de arremesso
    obj.image_angle = obj.direction;
}


