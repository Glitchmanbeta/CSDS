void title(){
  fill(255);
  textAlign(CENTER, CENTER);
  text("The Computer Science Dating Simulator", width/2 , 50);
  textFont(f, 34);
  text("(This screen is a placeholder! More will come in the future)", width/2, 150); 
  rect(rectX, rectY, rectSize + 50, rectSize);
  //rect(width - (2* rectSize), height - (2 * rectSize) + 50, rectSize + 50, rectSize);
  textFont(f, 40);
  textAlign(LEFT, BOTTOM);
  fill(0);
  text("Start!", rectX, rectY + 50);
}