/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(collision_circle(x,y,radius,Obj_Player, false, true)){
		popup_id.visible = true
		if(keyboard_check(ord("E"))){
			interaction = interaction + 1;
			draw_set_font(fnt_text);

			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
		
			draw_text(75,50,interaction);
			
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
		}
}