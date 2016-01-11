PFont f;
int rectX, rectY;
int rectSize = 90;
color rectColor, rectHighlight;
color currentColor;

void setup(){
  fullScreen();
  f = createFont("Terminal", 68, true);
  rectColor = color(128);
  rectHighlight = color(102);
  rectX = width/2 - rectSize - 10;
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
  rect(rectX, rectY, rectSize, rectSize);
}

void mousePressed() {
  textFont(f, 24);
  text("Something changed!", width/2, 300);
}