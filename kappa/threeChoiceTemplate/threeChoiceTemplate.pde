int rectX, rectY;
int choice1, choice2, choice3, choiceHeight;
int leftBound, rightBound, rectWidth, rectHeight;

PFont g;


void setup(){
  fullScreen();
  
  g = createFont("Comic Sans", 36, true);
  
  leftBound = height / 20;
  rightBound = 19 * height / 20;
  rectWidth = width - height / 10;
  rectHeight = 9 * height / 10;

  
  choice1 = 76 * height / 100;
  choice2 = 82 * height / 100;
  choice3 = 88 * height / 100;
  choiceHeight = 5 * height / 100;
  
  rect(leftBound, leftBound, rectWidth, rectHeight);
}

void buttons() {

  fill(100);
  textSize(36);

  textAlign(CENTER, CENTER);
  text("• ABCD", width / 2, choice1 + choiceHeight / 2);
  
  textAlign(CENTER, CENTER);
  text("• EFGH", width / 2, choice2 + choiceHeight / 2);
  
  textAlign(CENTER, CENTER);
  text("• IJKL", width / 2, choice3 + choiceHeight / 2);
}

void draw() {
  buttons();
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