PFont f;
int rectX, rectY;
int rectSize = 90;
color rectColor, rectHighlight;
color currentColor;
boolean rectOver = false;

void setup(){
  fullScreen();
  f = createFont("Papyrus", 68, true);
  rectColor = color(128);
  rectHighlight = color(102);
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
  update(mouseX, mouseY);
  if(rectOver){
    fill(rectHighlight);
  }else{
    fill(rectColor);
  }
  rect(rectX, rectY, rectSize, rectSize);
}

void update(int x, int y) {
    if( overRect(rectX, rectY, rectSize, rectSize) ) {
        rectOver = true;
  }
}

void mousePressed() {
  if(rectOver){
    currentColor = rectColor;
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}