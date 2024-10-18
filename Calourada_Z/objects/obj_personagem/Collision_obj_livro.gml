 if (global.life[global.index_life] > 0) {
            global.life[global.index_life] -= 0.5;
}

        // Verificar se a vida no índice atual é zero
if (global.life[global.index_life] <= 0 && global.index_life > 0) {
            global.index_life -= 1;
}


instance_destroy(other)