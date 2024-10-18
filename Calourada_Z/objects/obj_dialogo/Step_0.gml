#region andar pelo dialogo 

if keyboard_check_pressed(ord("Q")){
	index++;
	index_letra = 1;
		global.pode_mover = false;
	if index >= array_length(texto){
		instance_destroy();
		global.pode_mover = true;
	} 
	
	
}

#endregion