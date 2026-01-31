///@desc Paint the box and 
draw_set_colour(#00A99D)
draw_roundrect(x + 670, y+25, x + 1300, y + 615, false);
draw_set_colour(c_white);
draw_set_font(fnt_text);
draw_text_ext(x+670, y+25, string_copy(texts[textIndex], 1, currentTextProgress), -1, room_width-2*margin);