PFont f;
void setup(){
  fullScreen();
  f = createFont("Papyrus", 68, true);
}

void draw(){
  background(0);
  textFont(f);
  fill(255);
  text("The Computer Science Dating Simulator", 0, 100);
  textFont(f, 34);
  text("(This screen is a placeholder! More will come in the future)", 300, 200); 
}