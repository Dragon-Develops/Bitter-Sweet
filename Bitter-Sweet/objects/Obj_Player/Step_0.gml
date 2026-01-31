//Prevents the player character from moving while in the computer
if (room = Apartment_1){
// Actual Player Movement
	if (keyboard_check(vk_left)){
		x = x - 5
	}
	if (keyboard_check(vk_right)){
		x = x + 5
	}
	if (keyboard_check(ord("A"))){
		x = x - 5
	}
	if (keyboard_check(ord("D"))){
		x = x + 5
	}
}
if (room = Street){
// Actual Player Movement
	if (keyboard_check(vk_left)){
		x = x - 5
	}
	if (keyboard_check(vk_right)){
		x = x + 5
	}
	if (keyboard_check(ord("A"))){
		x = x - 5
	}
	if (keyboard_check(ord("D"))){
		x = x + 5
	}
}
//Go to the Computer area
if(collision_circle(x,y,radius,Obj_Terminal, false, true)){
		if(keyboard_check(ord("E"))){
			room_goto(Woman_Room);
		}
	}
if(collision_circle(x,y,radius,Obj_Breakroom_Door_Enter, false, true)){
		if(keyboard_check(ord("E"))){
			room_goto(Street);
			x = 1165;
		}
	}
if(collision_circle(x,y,radius,Obj_Breakroom_Door_Leave, false, true)){
	if(keyboard_check(ord("E"))){
			room_goto(Apartment_1);
			x = 200;
		}
	}
	
if(room = Woman_Room){
	Obj_Player.visible = false;
}
if(room = Settings){
	Obj_Player.visible = false;
}
if(room = Apartment_1){
	Obj_Player.visible = true;
}
if(room = Street){
	Obj_Player.visible = true;
}
if (keyboard_check(vk_escape)){
// Store the ID of the current room
	if (global.previous_room = noone){
		global.previous_room = room;
	}else{
	room_goto(Settings);
	}
}
