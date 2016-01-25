void train() {
    background(255);
    image(bum, leftBound, leftBound);
  
    fill(0);
    textFont(description);
  
    textAlign(CENTER, CENTER);
    text("You take the K train all the way down to Chambers Street, jamming to your sweet JBiebs tunes. Right when you get to the good part, you hear a familiar phrase.", width / 2, 67.5 * height / 100);
    text("'Spare change for the homeless?' You try to run away, but your sparkly Beats make you an easy target to pursue. You turn around and...", width / 2, 71.5 * height / 100);
  
    
    fill(100);
    textFont(choice_font);
  
    textAlign(CENTER, CENTER);
    text("• Give her some gold coins. I mean, you still have halal money left.", width / 2, choice1 + choiceHeight / 2);
    
    textAlign(CENTER, CENTER);
    text("• Give her a penny or two. That's what she's worth, after all.", width / 2, choice2 + choiceHeight / 2);
    
    textAlign(CENTER, CENTER);
    text("• Hold out your empty hand. When she looks, say 'Got Eem!' and run away.", width / 2, choice3 + choiceHeight / 2);
}