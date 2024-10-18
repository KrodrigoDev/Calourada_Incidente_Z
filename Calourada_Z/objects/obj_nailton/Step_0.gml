posi = irandom_range(20,900)

if distance_to_object(obj_personagem) < 18{
	x = posi
}

if instance_exists(obj_personagem){
	image_xscale = global.angulo_player;
}

if life <= 0{
	audio_stop_sound(som_boss_figth)
	instance_destroy()
	instance_destroy(obj_monstro_nailton)
	global.matou_mike = true;
	audio_play_sound(som_amb,0,true)
}