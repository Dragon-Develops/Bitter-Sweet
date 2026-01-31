/// @description Insert description here
// You can write your code in this editor

menu_options[0] = "Fullscreen"; 
menu_options[1] = "Back";
menu_options[2] = "EXIT GAME";

// Store values for settings if needed (e.g., volume level)
sound_volume = 100;
music_volume = 100;
text_speed = 1; // 0=Slow, 1=Medium, 2=Fast

// Track the currently selected item
menu_selection = 0; 
menu_length = array_length(menu_options);
fullscreen_state = window_get_fullscreen();