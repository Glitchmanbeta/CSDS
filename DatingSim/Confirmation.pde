String organ(float sex){
  if(sex == 0.0) {
    return "Male";
  }

  else if(sex == 1.0) {
    return "Female";
  }

  else if(sex == 2.0) {
    return "Trans";
  }

  else{
    return "Apache Attack Helicopter";
  }
}

String love(float lovers) {
  if(lovers == 0.0) {
    return "Heterosexual";
  }

  if(lovers == 1.0){
    return "Homosexual";
  }

  if(lovers == 2.0) {
    return "Bisexual";
  }

  if(lovers == 3.0){
    return "Asexual";
  }

  else{
    return "Unknown";
  }
}
void confirm(){
  //menus.get(ScrollableList.class, "Gender?").setBarVisible(false);
  //menus.get(ScrollableList.class, "Orientation?").setBarVisible(false);
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(f, 20);
  text("So, you are a(n) " + love(lovers) + " " + organ(sex), width /2, height / 2);
  text("Great! Shall we begin?", width / 2, height / 2 + 100);
  rect(width - (2* rectSize), height - (2 * rectSize) + 50, rectSize + 50, rectSize);
  fill(0);
  text("Begin", width - (2 * rectSize) + 50, height - (2 * rectSize) + 75);
}