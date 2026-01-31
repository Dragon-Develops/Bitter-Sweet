//Prevents the player character from moving while in the computer
if (room = Office){
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
if (room = Breakroom){
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
			room_goto(Computer_Space);
		}
	}
if(collision_circle(x,y,radius,Obj_Breakroom_Door_Enter, false, true)){
		if(keyboard_check(ord("E"))){
			room_goto(Breakroom);
			x = 1165;
		}
	}
if(collision_circle(x,y,radius,Obj_Breakroom_Door_Leave, false, true)){
	if(keyboard_check(ord("E"))){
			room_goto(Office);
			x = 200;
		}
	}
	
if(room = Computer_Space){
	Obj_Player.visible = false;
}
if(room = Settings){
	Obj_Player.visible = false;
}
if(room = Office){
	Obj_Player.visible = true;
}
if (keyboard_check(vk_escape)){
	room_goto(Settings)
}