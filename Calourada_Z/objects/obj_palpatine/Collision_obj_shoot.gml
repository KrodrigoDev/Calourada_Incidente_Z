instance_destroy(other);// destroi a bala

if global.mouse_fogo {
	life -= 1.5;
} else {
	life -= 1;
}

show_debug_message(life)
