STEP_SIZE = 2
MOVABLE_ROOMS = ds_list_create()
ds_list_add(MOVABLE_ROOMS, rm_test)
ds_list_add(MOVABLE_ROOMS, rm_lvl_1)
//ds_list_add(MOVABLE_ROOMS, rm_lvl_2)
//ds_list_add(MOVABLE_ROOMS, rm_lvl_3)
//ds_list_add(MOVABLE_ROOMS, rm_lvl_4)
//ds_list_add(MOVABLE_ROOMS, rm_lvl_5)
//ds_list_add(MOVABLE_ROOMS, rm_lvl_6)


if (ds_list_find_index(MOVABLE_ROOMS, room) == -1) { }
else { // if we're movable
	if (keyboard_check(vk_right)) { x += STEP_SIZE }
	if (keyboard_check(vk_left)) { x -= STEP_SIZE }
	if (keyboard_check(vk_down)) { y += STEP_SIZE }
	if (keyboard_check(vk_up)) { y -= STEP_SIZE }
};

// TODO: look up dagger.

