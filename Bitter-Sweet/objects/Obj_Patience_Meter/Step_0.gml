/// @description Insert description here
// You can write your code in this editor
// Decrease patience by 10 per second
if (room = Office){
patience -= 5 / room_speed;
}
// Prevent patience from going below 0
patience = clamp(patience, 0, max_patience);

// Check if patience is gone
if (patience <= 0) {
    //Game Over
}