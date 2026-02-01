/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (collision_circle(x,y,radius,Obj_Player, false,true)){
	if (keyboard_check(ord("E"))){
		instance_create_layer(x + 100,y-25,"Instances",Obj_Text_Box);
	}
}