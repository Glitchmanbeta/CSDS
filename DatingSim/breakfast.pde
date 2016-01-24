void breakfast() {
    background(255);

    fill(255);    
    image(food, leftBound, leftBound);
  
    fill(255);
    textFont(description);
  
    textAlign(CENTER, CENTER);
    text("You're jolted awake by some bouchedag blaring his car horn, only to be greeted by a lovely breakfast made by your parents.", width / 2, 67.5 * height / 100);
    text("The smell of bacon grease reminds you of your old [insert love interest], but no matter much you eat, you still feel empty.", width / 2, 71.5 * height / 100);
  
    
    fill(100);
    textFont(choice_font);
  
    textAlign(CENTER, CENTER);
    text("• Finish the breakfast. Food is important!", width / 2, choice1 + choiceHeight / 2);
    
    textAlign(CENTER, CENTER);
    text("• Starve. Why waste food on someone like yourself?", width / 2, choice2 + choiceHeight / 2);
    
    textAlign(CENTER, CENTER);
    text("• Throw the food at your parents and scream 'THE BACON IS FORKING RAAAAAW!'.", width / 2, choice3 + choiceHeight / 2);
}