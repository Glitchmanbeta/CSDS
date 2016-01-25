void cs2() {
    background(255);

    fill(255);    
    image(comp2, leftBound, leftBound);
  
    fill(0);
    textFont(stat_font);
    textAlign(CENTER, CENTER);

    text("Wow! Sick nasty burn! Your opponent lost 27HP! Your opponent fainted!", width / 2, 72.5 * height / 100);
    text("You're taken into the principal's office for harming this beautiful, young man..", width / 2, 78.5 * height / 100);
    text("Your grades fell amidst cries of 'OOOOO' in the hallway.", width / 2, 84.5 * height / 100);

    text("Click the picture to continue!", width / 2, 92.5 * height / 100);
}