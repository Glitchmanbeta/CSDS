void menus(){
  menus.addScrollableList("Gender?")
    .setPosition(width/6 + 10, height/3)
    .setSize(200, 100)
    .setBarHeight(20)
    .setItemHeight(20)
    .addItems(gender);
    
  menus.addScrollableList("Orientation?")
    .setPosition(width * (11.0/16.0), height / 3)
    .setSize(200, 100)
    .setBarHeight(20)
    .setItemHeight(20)
    .addItems(orientation);
}

void menuText(){
  fill(255);
  textAlign(CENTER,CENTER);
  textFont(f, 50);
  text("Before we begin, we have some questions...", width/2, 50);
  textFont(f, 30);
  text("What is your gender?", width/4, height/4);
  text("What is your sexual orientation?", width * (3.0/4.0), height/4);
}