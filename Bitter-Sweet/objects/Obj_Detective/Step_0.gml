/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if(room = Street){
if(! has_been_interacted){
	if(collision_circle(x,y,radius,Obj_Player, false, true)){
		popup_id.visible = true
		if(keyboard_check(ord("E"))){
			
		}
	}else{
		popup_id.visible = false
	}
}
}
if (room != Street){
	Obj_Detective.visible = false
}else{
	Obj_Detective.visible = true
}
