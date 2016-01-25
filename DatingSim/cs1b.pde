void cs1b() {
    background(255);

    fill(255);    
    image(comp1a, leftBound, leftBound);
  
    fill(0);
    textFont(stat_font);
    textAlign(CENTER, CENTER);

    text("You don't look like the generous type. Generous people make me salivate.", width / 2, 72.5 * height / 100);
    text("Sorry, but it looks like you have to find your romance elsewhere.", width / 2, 78.5 * height / 100);
    text("Ouch! Your esteem fell super hard!", width / 2, 84.5 * height / 100);

    text("Click the picture to continue!", width / 2, 92.5 * height / 100);
}