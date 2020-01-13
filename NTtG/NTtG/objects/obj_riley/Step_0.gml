key_right = keyboard_check(ord("D"))
key_left = keyboard_check(ord("A"))
key_jump = keyboard_check_pressed(ord("S"))

move = key_right - key_left
hsp = move * move_speed
vsp += grav

if (place_meeting(x, y + 1, obj_wall)) { // are we on the floor?
	vsp = key_jump * (-jump_speed)
}

// Collision system
// Horizontal
if (place_meeting(x + hsp, y, obj_wall)) { // are we about to hit something?
	while (!place_meeting(x + sign(hsp), y, obj_wall)) {  
		// While we are "pretty close" to the wall, but not exactly up to it,
		// move the sprite up to it.
		x += sign(hsp)
	}
	hsp = 0
	
	// wall-jump
	if (key_jump) {
		vsp = -jump_speed	
	}
}

// Vertical
if (place_meeting(x, y + vsp, obj_wall)) {
	while (!place_meeting(x, y + sign(vsp), obj_wall)) {
		y += sign(vsp)
	}
	vsp = 0
}


x += hsp
y += vsp