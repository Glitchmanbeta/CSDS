void break1() {
    background(255);

    fill(255);    
    image(breakfast1, leftBound, leftBound);
  
    fill(0);
    textFont(stat_font);
    textAlign(CENTER, CENTER);

    text("You smile as you finish the lovingly made breakfast. Your stomach gurgles in happiness!", width / 2, 72.5 * height / 100);
    text("Eating it, you feel refreshed and ready to conquer the day. You wash your empty plate.", width / 2, 78.5 * height / 100);
    text("Your stomach is at its full capacity. Your esteem rises.", width / 2, 84.5 * height / 100);

    text("Click the picture to continue!.", width / 2, 92.5 * height / 100);
}