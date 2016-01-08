PFont f;
void setup(){
  fullScreen();
  f = createFont("Comic Sans MS", 32, true);
}

void draw(){
  background(0);
  textFont(f, 32);
  fill(255);
  text("Hello World!", 100, 100);
}