/// @description Insert description here
// You can write your code in this editor
var _start_y = 100;
var _spacing = 32;

for (var i = 0; i < menu_length; i++) {
    var _color = c_white;
    if (i == menu_selection) {
        _color = c_yellow; // Highlight the selected item
        draw_text(50, _start_y + i * _spacing, ">"); // Draw a cursor
    }
    draw_set_color(_color);
    draw_text(80, _start_y + i * _spacing, menu_options[i]);
}
draw_set_color(c_white); // Reset color