// desenhando o personagem
draw_self();

// efeitos de gpu para simular o dano
if alpha > 0 {
	gpu_set_fog(true,color,0,0);
	draw_sprite_ext(spr_inimigo_fraco_walk,image_index,x,y,1,1,0,c_white,alpha);
	gpu_set_fog(false,color,0,0);
}









