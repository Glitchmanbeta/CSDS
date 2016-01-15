int rectX, rectY;
int choice1, choice2, choice3, choiceHeight;
int leftBound, rightBound, rectWidth, rectHeight;


void setup(){
  fullScreen();
  
  leftBound = height / 20;
  rightBound = 19 * height / 20;
  rectWidth = width - height / 10;
  rectHeight = 9 * height / 10;

  
  choice1 = 72 * height / 100;
  choice2 = 80 * height / 100;
  choice3 = 88 * height / 100;
  choiceHeight = 7 * height / 100;
  
  rect(leftBound, leftBound, rectWidth, rectHeight);
}

void buttons() {
  fill(100);

  rect(height / 20, 72 * height / 100, width - height / 10, 7 * height / 100);
  rect(height / 20, 80 * height / 100, width - height / 10, 7 * height / 100);
  rect(height / 20, 88 * height / 100, width - height / 10, 7 * height / 100);
  
  fill(255);
  textSize(32);

  text("ABCD", leftBound + 5, choice1);
  text("EFGH", leftBound + 5, choice2);
  text("IJKL", leftBound + 5, choice3);
}

void draw() {
  buttons();
}

void mousePressed() {
   if(mouseX > leftBound && mouseX < rightBound) {
     if(mouseY > choice1 && mouseY < choice1 + choiceHeight) {
       
     }
     
     else if(mouseY > choice2 && mouseY < choice2 + choiceHeight) {

     }
     
     else if(mouseY > choice3 && mouseY < choice3 + choiceHeight) {

     }
   }
}