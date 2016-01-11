PFont f;
int rectX, rectY;
int rectSize = 90;
color rectColor, baseColor;
color currentColor;
boolean rectOver = false;

void setup(){
  fullScreen();
  f = createFont("Papyrus", 68, true);
  rectColor = color(128);
  currentColor = baseColor;
  rectX = width/2 - rectSize - 10;
  rectY = height/2 - rectSize/2;
}

void draw(){
  background(0);
  textFont(f);
  fill(255);
  text("The Computer Science Dating Simulator", 0, 100);
  textFont(f, 34);
  text("(This screen is a placeholder! More will come in the future)", 200, 200); 
}