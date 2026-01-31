/// @description Insert description here
// You can write your code in this editor
if (room = Office){
	if (global.patience > 0.25){
		global.patience -= 2 / room_speed;
	}
}
if (room = Computer_Space){
	if (global.patience > 0.25){
		global.patience -= 2 / room_speed;
	}
}

// Check if patience is gone
if (global.patience <= 0) {
	Obj_Patience_Meter.visible = false;
	room_goto(Game_Over)
	global.patience = global.patience + 0.15
}
if (room = Settings){
	Obj_Patience_Meter.visible = false;
}else{
	Obj_Patience_Meter.visible = true;
}

