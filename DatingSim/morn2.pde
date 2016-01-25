void morn2() {
    background(255);

    fill(255);    
    image(man_morn2, leftBound, leftBound);
  
    fill(0);
    textFont(stat_font);
    textAlign(CENTER, CENTER);
    
    text("All your hard work from the all-nighter makes its way to your eyes. *Yaaawn* What could a few hours of sleep do?", width / 2, 72.5 * height / 100);
    text("You manage to sleep through the entire twenty-four hour day. When you wake up, you feel GREAT! Sleep is beautiful.", width / 2, 80.5 * height / 100);
    text("Your sleep stat rises, but your grades fall.", width / 2, 84.5 * height / 100);

    text("Click the picture to continue!.", width / 2, 92.5 * height / 100);
}