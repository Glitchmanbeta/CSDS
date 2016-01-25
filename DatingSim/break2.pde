void break2() {
    background(255);

    fill(255);    
    image(breakfast2, leftBound, leftBound);
  
    fill(0);
    textFont(stat_font);
    textAlign(CENTER, CENTER);

    text("Sorry, but I'm running late! I can't be late; my perfect attendance would be shattered.", width / 2, 72.5 * height / 100);
    text("Although your stomach cries out in anguish, you ignore its wishes and run. You don't deserve to eat anyway", width / 2, 78.5 * height / 100);
    text("Your hunger sharply rises. Your esteem falls.", width / 2, 84.5 * height / 100);

    text("Click the picture to continue!.", width / 2, 92.5 * height / 100);
}