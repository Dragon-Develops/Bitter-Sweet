/// @description Insert description here
// You can write your code in this editor
var _bar_x = 50; // X position on screen
var _bar_y = 650; // Y position on screen
var _width = 200;
var _height = 60;

// Calculate percentage
var _patience_perc = (global.patience / max_patience) * 100;

draw_healthbar(_bar_x, _bar_y, _bar_x + _width, _bar_y + _height, _patience_perc, c_red, c_yellow, c_aqua, 0, true, true);