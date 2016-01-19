int rectX, rectY;
int choice1, choice2, choice3, choiceHeight;
int leftBound, rightBound, rectWidth, rectHeight;

PFont description, choice_font;
PImage bed;

void setup(){
  fullScreen();
  
  leftBound = height / 20;
  rightBound = 19 * height / 20;
  rectWidth = width - height / 10;
  rectHeight = 9 * height / 10;

  // 1814 x 650
  
  choice1 = 76 * height / 100;
  choice2 = 82 * height / 100;
  choice3 = 88 * height / 100;
  choiceHeight = 5 * height / 100;
  
  rect(leftBound, leftBound, rectWidth, rectHeight);
}

void text_choices() {
  description = createFont("papyrus.ttf", 24);
  choice_font = createFont("papyrus.ttf", 24);

  fill(0);
  textFont(description);

  textAlign(CENTER, CENTER);
  text("You wake up from the all-nighter you pulled yesterday. Your eyes are burning, but the pain feels so good. The crack of dawn shows itself from the tiny window across your room.", width / 2, 67.5 * height / 100);
  text("At times like this, you question your decision to go to Stuyvesant High School. But being Mr. K's disciple in his APCS class makes it seem all worth it.", width / 2, 71.5 * height / 100);

  
  fill(100);
  textFont(choice_font);

  textAlign(CENTER, CENTER);
  text("• Wake up, as you must see K-Senpai.", width / 2, choice1 + choiceHeight / 2);
  
  textAlign(CENTER, CENTER);
  text("• Go back to sleep. Sweet, sweet sleep. Mmmm...", width / 2, choice2 + choiceHeight / 2);
  
  textAlign(CENTER, CENTER);
  text("• Cry because your crush rejected you, and sleep would be your only respite.", width / 2, choice3 + choiceHeight / 2);
}

void image() {
  bed = loadImage("bed.jpg");
  image(bed, leftBound, leftBound);
}

void draw() {
  image();
  text_choices();
}

void mousePressed() {
   if(mouseX > leftBound && mouseX < rightBound) {
     if(mouseY > choice1 && mouseY < choice1 + choiceHeight) {
       exit();
     }
     
     else if(mouseY > choice2 && mouseY < choice2 + choiceHeight) {

     }
     
     else if(mouseY > choice3 && mouseY < choice3 + choiceHeight) {

     }
   }
}