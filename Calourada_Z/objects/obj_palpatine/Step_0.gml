state()

if !audio_is_playing(som_boss_figth) and life > 0 { 
	audio_play_sound(som_boss_figth, 1, true)
}

audio_stop_sound(som_amb)

