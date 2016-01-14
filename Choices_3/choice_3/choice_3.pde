int rectX, rectY;
int firstChoice, secondChoice, thirdChoice;
int leftBound, rightBound, rectWidth, rectHeight;


void setup() {
  fullScreen();
  rect(height / 20, height / 20, width - height / 10, 9 * height / 10);
  
  leftBound = height / 20;
  rightBound = width - height / 10;
  
  rectWidth = width - height / 10;
  rectHeight = 7 * height / 100;
  
  firstChoice = 18 * height / 25;
  secondChoice = 4 * height / 5;
  thirdChoice = 22 * height / 25;
}


void buttons() {
  fill(120);
  rect(leftBound, firstChoice, rightBound, rectHeight);
  rect(leftBound, secondChoice, rightBound, rectHeight);
  rect(leftBound, thirdChoice, rightBound, rectHeight);
}

void draw() {
  buttons();
}

void mousePressed() {
   if(mouseX > rectX && mouseX < rectX + rectWidth) {
     if(mouseY > firstChoice && mouseY < firstChoice + rectHeight) {
       text("Something changed!", width / 2, 300);
     }
     
     else if(mouseY > secondChoice && mouseY < secondChoice + rectHeight) {
       text("You're a wizard, Harry", width / 2, 300);
     }
     
     else if (mouseY > thirdChoice && mouseY < thirdChoice + rectHeight) {
       text("U wot m8", width / 2, 300);
     }
   }
}