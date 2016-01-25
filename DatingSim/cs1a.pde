void cs1a() {
    background(255);

    fill(255);    
    image(comp1a, leftBound, leftBound);
  
    fill(0);
    textFont(stat_font);
    textAlign(CENTER, CENTER);

    text("I love generous people who help out the homeless! You look like my type!", width / 2, 72.5 * height / 100);
    text("Looks like you got a date! Congratulations! You win!", width / 2, 78.5 * height / 100);
    text("Your winning stat was set from 'false' to 'true.'.", width / 2, 84.5 * height / 100);

    text("Click the picture to end the game! (Or you could play again.)", width / 2, 92.5 * height / 100);
}