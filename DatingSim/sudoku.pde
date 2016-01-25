void esteem() {
    background(255);    
    image(sudoku, leftBound, leftBound);
  
    fill(0);
    textFont(stat_font);
    textAlign(CENTER, CENTER);

    text("'What is life?' You look at yourself. What are you worth? Nothing. You have no esteem.", width / 2, 72.5 * height / 100);
    text("There's only one thing left to do. You pull out a puzzle. Time to commit sudoku.", width / 2, 78.5 * height / 100);
    text("You die. The only thing that rises is your pencil.", width / 2, 84.5 * height / 100);

    text("Click the picture to end the game! (Or you could play again.)", width / 2, 92.5 * height / 100);
}

void grades() {
    background(255);    
    image(sudoku, leftBound, leftBound);
  
    fill(0);
    textFont(stat_font);
    textAlign(CENTER, CENTER);

    text("'You look at your report card. Man those are some low grades. What are you going to do now?", width / 2, 72.5 * height / 100);
    text("You have no future. You don't want to go home and get the bamboo. You commit sudoku.", width / 2, 78.5 * height / 100);
    text("You die. The only thing that rises is your pencil.", width / 2, 84.5 * height / 100);

    text("Click the picture to end the game! (Or you could play again.)", width / 2, 92.5 * height / 100);
}

void end() {
    background(255);   
    image(check, leftBound, leftBound);
  
    fill(0);
    textFont(stat_font);
    textAlign(CENTER, CENTER);

    text("That's the end of our game for now. Hope you enjoyed the CSDS: Computer Science Dating Simulator!", width / 2, 72.5 * height / 100);
    text("Don't forget to like, comment, and suscribe.", width / 2, 78.5 * height / 100);
    text("If you want more, pay us please.", width / 2, 84.5 * height / 100);

    text("Click the picture to end the game! (Or you could play again.)", width / 2, 92.5 * height / 100);   
}