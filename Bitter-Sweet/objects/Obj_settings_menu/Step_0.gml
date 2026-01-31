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
			music_volume += 0.1;
            if (music_volume > 1) music_volume = 0;
            audio_group_set_gain(audiogroup_music, music_volume, 0);
            break;
        case 2:
            // Code to adjust Text Speed
			 text_speed_index++;
            if (text_speed_index > 2) text_speed_index = 0;
            // 0 = slow, 1 = normal, 2 = fast
            global.text_speed = [0.2, 0.5, 1.0][text_speed_index];
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
		case 5:
			game_end();
			break;
    }
}