void menus(){
  menus.addScrollableList("Gender?")
    .setPosition(600, 600)
    .setSize(200, 100)
    .setBarHeight(20)
    .setItemHeight(20)
    .addItems(gender);
    
  menus.addScrollableList("Orientation?")
    .setPosition(800, 600)
    .setSize(200, 100)
    .setBarHeight(20)
    .setItemHeight(20)
    .addItems(orientation);
}

void menuText(){
  fill(255);
  textAlign(CENTER,CENTER);
  textFont(f, 30);
  text("Before we begin, we have some questions...", width/2, 50);
}