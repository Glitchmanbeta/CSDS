int rectX, rectY;
int B1, B2, B3;
int rectSize = 50;

void setup(){
  fullScreen();
  rect(height / 20, height / 20, width - height / 10, 9 * height / 10);
}

void buttons() {
  fill(120);
  rect(height / 20, 72 * height / 100, width - height / 10, 7 * height / 100);
  rect(height / 20, 80 * height / 100, width - height / 10, 7 * height / 100);
  rect(height / 20, 88 * height / 100, width - height / 10, 7 * height / 100);
}

void draw() {
  buttons();
}

void mousePressed() {
   if(mouseX > rectX && mouseX < rectX + rectSize && mouseY > rectY && mouseY < rectY + rectSize){
    text("Something changed!", width/2, 300);
   } else{
     text("Something else changed!", width/2, 300);
   }
}