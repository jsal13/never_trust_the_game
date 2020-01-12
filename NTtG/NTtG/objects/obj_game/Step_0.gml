switch (room) {
	case rm_start:
		if (keyboard_check_pressed(vk_enter)) {
			room_goto(rm_test)
		}
		break;
	case rm_test:
		if (keyboard_check_pressed(vk_enter)) {
			room_goto(rm_lvl_1)
		}
		break;
}
		