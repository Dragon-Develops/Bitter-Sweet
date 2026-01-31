/// @description Insert description here
// You can write your code in this editor
if (room = Office){
global.patience -= 2 / room_speed;
}
if (room = Computer_Space){
global.patience -= 5 / room_speed;
}

// Check if patience is gone
if (global.patience <= 0) {
    room_goto(Game_Over)
	Obj_Patience_Meter.visible = false;
}
if (room = Settings){
	Obj_Patience_Meter.visible = false;
}else{
	Obj_Patience_Meter.visible = true;
}

