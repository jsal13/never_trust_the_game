switch(room) {
	case rm_start:
		draw_set_halign(fa_center)
		var c = c_lime;
		draw_text_transformed_color(
			room_width/2, 100, "Never Trust The " + global._title_thing,
			2, 2, 0, c, c, c, c, 1
		);
		break;
}
