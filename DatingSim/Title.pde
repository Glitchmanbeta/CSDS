void title(){
  fill(255);
  textAlign(CENTER, CENTER);
  text("The Computer Science Dating Simulator", width / 2, 50);
  
  rect(rectX, rectY, rectSize + 50, rectSize);
  textFont(f, 40);
  textAlign(LEFT, BOTTOM);

  fill(0);
  text("Start!", rectX, rectY + 65);
}