/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_down)) {
    menu_selection++;
    if (menu_selection >= menu_length) {
        menu_selection = 0; // Loop selection
    }
}

if (keyboard_check_pressed(vk_up)) {
    menu_selection--;
    if (menu_selection < 0) {
        menu_selection = menu_length - 1; // Loop selection
    }
}
if (keyboard_check_pressed(ord("S"))) {
    menu_selection++;
    if (menu_selection >= menu_length) {
        menu_selection = 0; // Loop selection
    }
}

if (keyboard_check_pressed(ord("W"))) {
    menu_selection--;
    if (menu_selection < 0) {
        menu_selection = menu_length - 1; // Loop selection
    }
}

if (keyboard_check_pressed(vk_enter)) {
    // Perform action based on selection
    switch (menu_selection) {

        case 0:
			//Code to change Fullscreen
			fullscreen_state = !fullscreen_state;
            window_set_fullscreen(fullscreen_state);
			break;
		case 1:
            // Go back to the previous menu or close the settings
            // Check if a valid room ID was stored
			if (global.previous_room != noone) {
			// Go back to the stored room
			 room_goto(global.previous_room);
			 global.previous_room = noone;
			} 
            break;
		case 2:
			game_end();
			break;
    }
}
if (keyboard_check_pressed(vk_space)) {
    // Perform action based on selection
    switch (menu_selection) {

        case 0:
			//Code to change Fullscreen
			fullscreen_state = !fullscreen_state;
            window_set_fullscreen(fullscreen_state);
			break;
		case 1:
            // Go back to the previous menu or close the settings
            // Check if a valid room ID was stored
			if (global.previous_room != noone) {
			// Go back to the stored room
			 room_goto(global.previous_room);
			 global.previous_room = noone;
			} 
            break;
		case 2:
			game_end();
			break;
    }
}