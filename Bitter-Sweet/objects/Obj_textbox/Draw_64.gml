///@desc Paint the box and 
draw_set_colour(#00A99D)
draw_roundrect(x + 545, y+25, x + 1150, y + 500, false);
draw_set_colour(c_white);
draw_set_font(fnt_text);
draw_text_ext(x+550, y+25, string_copy(texts[global.textIndex], 1, global.currentTextProgress), -1, room_width-2*margin);