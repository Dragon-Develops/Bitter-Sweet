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

if (keyboard_check_pressed(vk_enter)) {
    // Perform action based on selection
    switch (menu_selection) {
        case 0:
            // Code to adjust Sound FX
            break;
        case 1:
            // Code to adjust Music
            break;
        case 2:
            // Code to adjust Text Speed
            break;
        case 3:
			//Code to change Fullscreen
			fullscreen_state = !fullscreen_state;
            window_set_fullscreen(fullscreen_state);
			break;
		case 4:
            // Go back to the previous menu or close the settings
            room_goto(Office); // Example room transition
            break;
    }
}