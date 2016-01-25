void comp() {
    background(255); 
    image(park, leftBound, leftBound);
  
    fill(0);
    textFont(description);
  
    textAlign(CENTER, CENTER);
    text("You manage to escape the panhandler and make your way towards Stuyvesant High School. You breeze through your classes until you get to your favorite, APCS.", width / 2, 67.5 * height / 100);
    text("All of a sudden, this man turns around to you and says: 'Hey, can you help make my integer a long?' In response, you say:", width / 2, 71.5 * height / 100);
  
    
    fill(100);
    textFont(choice_font);
  
    textAlign(CENTER, CENTER);
    text("• Of course bb ;).", width / 2, choice1 + choiceHeight / 2);
    
    textAlign(CENTER, CENTER);
    text("• Ew, no wonder there's a computer nerd stereotype.", width / 2, choice2 + choiceHeight / 2);
    
    textAlign(CENTER, CENTER);
    text("• Why don't you consult the textbook like a true Stuyvesant student?.", width / 2, choice3 + choiceHeight / 2);
}