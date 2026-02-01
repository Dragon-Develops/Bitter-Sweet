
//------makes sure that the textbox appears over everything else-------//
depth = -9999;

//------textbox parameters------//
textbox_width = 200;
textbox_height = 64; 
border = 8;
line_sep = 10;
line_width = textbox_width - border*2;
txtb_spr = spr_textbox;
txtb_img = 0;
txtb_img_spd = 0;

//------the text------//
page = 0;
page_number = 0;

//------actual text lines-------//


text[0] = "Hi, how are you?";
text[1] = "This is the second entry of the text array!";
text[2] = "g~`1234567890 -_=+,<> /? ;:  ' [] {] \| ";
text[3] = "test test test test test test test test test test test test test test test test test test test test";


text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;