/// @description Insert description here
// You can write your code in this editor
if(collision_circle(x,y,radius,Obj_Health_Pickup, false, true)){
		if (global.patience <= 100){
		global.patience = global.patience + 1;
		}
}