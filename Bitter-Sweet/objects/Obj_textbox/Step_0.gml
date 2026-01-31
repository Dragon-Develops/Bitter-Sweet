///@desc Handle input and animation
var targetTextProgress = string_length(texts[global.textIndex]);
var currentTextAnimating = global.currentTextProgress < targetTextProgress;

// Typewriter effect --- increment progress if there is more text to show
if (currentTextAnimating) {
    ++global.currentTextProgress;
}

// Advance with enter
if (keyboard_check_pressed(vk_enter)) {
    // If there is more of the current text, skip to the end
    if (currentTextAnimating) {
        global.currentTextProgress = targetTextProgress;
    }
    // Otherwise, advance to the next text if there is more to show, self-destruct otherwise
    else {
	if (++global.textIndex < array_length(texts)) {
            global.currentTextProgress = 0;
        } else {
			global.textIndex = 0;
		}
    }
}
if (room = Computer_Space){
	Obj_textbox.visible = true
}else{
	Obj_textbox.visible = false
}
