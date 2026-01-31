/// @description Insert description here
// You can write your code in this editor
if (room = Office){
global.patience -= 2 / room_speed;
}
if (room = Computer_Space){
global.patience -= 4 / room_speed;
}
// Prevent patience from going below 0
global.patience = clamp(global.patience, 0, max_patience);

// Check if patience is gone
if (global.patience <= 0) {
    //Game Over
}
if (room = Settings){
	Obj_Patience_Meter.visible = false;
}else{
	Obj_Patience_Meter.visible = true;
}