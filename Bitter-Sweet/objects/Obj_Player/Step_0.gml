//Prevents the player character from moving while in the computer
if (!room = Computer_Space){
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
	
//Make Player Invisible when in the computer and in settings
if(!room = Office){
	Obj_Player.visible = false;
}else{
	Obj_Player.visible = true;
}

if (keyboard_check(vk_escape)){
	room_goto(Settings)
}