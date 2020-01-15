show_debug_message("Riley got game item.")
show_debug_message("Riley got " + string(object_get_name(object_index)))
with(obj_riley) {
	riley_got_game_obj = 1
}

instance_destroy()