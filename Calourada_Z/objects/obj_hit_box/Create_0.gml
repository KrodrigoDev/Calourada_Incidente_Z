#region Criação de Listas

var colision_list = ds_list_create();
var hitbox_list = ds_list_create(); // Armazena os inimigos que já levaram hit
var enemy_types = [obj_inimigo_fraco, obj_nailton, obj_professor_v, obj_palpatine]; // Adicione todos os tipos de inimigos aqui


#endregion

#region Verificação de Colisões

var c = instance_place_list(x, y, enemy_types, colision_list, false);

if (c > 0) {
	
    // Iterando sobre a lista de colisões
    for (var i = 0; i < ds_list_size(colision_list); i++) {
        var target = colision_list[| i];
        
        // Adicionando o inimigo à lista de hitbox se ainda não estiver lá
		if (!ds_list_find_index(hitbox_list, target)) {
			ds_list_add(hitbox_list, target);
			
			// Reduzindo a vida do zumbi fraco se não estiver na lista de hitbox
			with (target) {
				if global.uso_notebook {
					life -= 0.7;
				} else {
					life -= 0.3;
				}
			}
			
		}
    }
	

}



#endregion

#region Limpeza de Listas

ds_list_destroy(colision_list);
ds_list_destroy(hitbox_list);

#endregion
