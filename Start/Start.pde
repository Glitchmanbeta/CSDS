PFont f;
int rectX, rectY;
int rectSize = 50;
color rectColor, rectHighlight;
color currentColor;

void setup(){
  fullScreen();
  f = createFont("Comic Sans MS", 68, true);
  rectColor = color(128);
  rectHighlight = color(102);
  rectX = width/2 - (rectSize + 50)/2;
  rectY = height/2 - rectSize/2;
}

void draw(){
  background(0);
  textFont(f);
  fill(255);
  textAlign(CENTER, CENTER);
  text("The Computer Science Dating Simulator", width/2 , 50);
  textFont(f, 34);
  text("(This screen is a placeholder! More will come in the future)", width/2, 150); 
  rect(rectX, rectY, rectSize + 50, rectSize);
  textFont(f, 40);
  textAlign(LEFT, BOTTOM);
  fill(0);
  text("Start!", rectX, rectY + 50);
}

void mousePressed() {
   if(mouseX > rectX && mouseX < rectX + rectSize + 50 && mouseY > rectY && mouseY < rectY + rectSize){
    fill(255);
    textAlign(CENTER, CENTER);
    textFont(f, 24);
    text("Something changed!", width/2, 300);
   }
}