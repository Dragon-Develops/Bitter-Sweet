/// @description Insert description here
// You can write your code in this editor
if (room = Street){
	global.patience = global.patience
}
if (room = Apartment_1){
	if (global.patience > 0.25){
		global.patience -= 2 / room_speed;
	}
}
if (room = Woman_Room){
	if (global.patience > 0.25){
		global.patience -= 2 / room_speed;
	}
}

if (room = Settings){
	Obj_Patience_Meter.visible = false;
}else{
	if (room = rm_gameover){
		Obj_Patience_Meter.visible = false;
	}else{
		Obj_Patience_Meter.visible = true;
	}
}

