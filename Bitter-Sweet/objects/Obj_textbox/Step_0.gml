///@desc Handle input and animation
var targetTextProgress = string_length(texts[textIndex]);
var currentTextAnimating = currentTextProgress < targetTextProgress;

// Typewriter effect --- increment progress if there is more text to show
if (currentTextAnimating) {
    ++currentTextProgress;
}

// Advance with enter
if (keyboard_check_pressed(vk_enter)) {
    // If there is more of the current text, skip to the end
    if (currentTextAnimating) {
        currentTextProgress = targetTextProgress;
    }
    // Otherwise, advance to the next text if there is more to show, self-destruct otherwise
    else {
        if (++textIndex < array_length(texts)) {
            currentTextProgress = 0;
        } else {
            instance_destroy();
        }
    }
}