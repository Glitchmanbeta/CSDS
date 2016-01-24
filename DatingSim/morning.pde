void morning() {
    background(255);

    fill(255);
    rect(leftBound, leftBound, rectWidth, rectHeight);
  
    description = createFont("papyrus.ttf", 17);
    choice_font = createFont("papyrus.ttf", 17);
    
    image(bed, leftBound, leftBound);
  
    fill(0);
    textFont(description);
  //The text should have more lines, otherwise it will be really small
    textAlign(CENTER, CENTER);
    text("You wake up from the all-nighter you pulled yesterday. Your eyes are burning, but the pain feels so good. The crack of dawn shows itself from the tiny window across your room.", width / 2, 67.5 * height / 100);
    text("At times like this, you question your choice to go to Stuyvesant High School. But being Mr. K's disciple in his APCS class makes it worthwhile.", width / 2, 71.5 * height / 100);
  
    
    fill(100);
    textFont(choice_font);
  
    textAlign(CENTER, CENTER);
    text("• Wake up, as you must see K-Sensei.", width / 2, choice1 + choiceHeight / 2);
    
    textAlign(CENTER, CENTER);
    text("• Go back to sleep. Sweet, sweet sleep. Mmmm...", width / 2, choice2 + choiceHeight / 2);
    
    textAlign(CENTER, CENTER);
    text("• Cry because your crush rejected you, and sleep would be your only respite.", width / 2, choice3 + choiceHeight / 2);
}