void cs3() {
    background(255);

    fill(255);    
    image(comp3, leftBound, leftBound);
  
    fill(0);
    textFont(stat_font);
    textAlign(CENTER, CENTER);

    text("'Oh yeah? Do you like textbooks? Well how about you have one... to the face!", width / 2, 72.5 * height / 100);
    text("As your face gets struck with the mighty textbook, you slowly fall and hit the ground with a thud. You die.", width / 2, 78.5 * height / 100);
    text("What stats are there to change? You are dead. Deceased.", width / 2, 84.5 * height / 100);

    text("Click the picture to end the game! (Or you could play again.)", width / 2, 92.5 * height / 100);
}