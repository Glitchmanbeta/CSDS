void menu(){
  menus.addScrollableList("Gender?")
    .setPosition(width/6 + 10, height/3)
    .setSize(200, 500)
    .setBarHeight(50)
    .setItemHeight(50)
    .addItems(gender);
    
  menus.addScrollableList("Orientation?")
    .setPosition(width * (11.0/16.0), height / 3)
    .setSize(200, 500)
    .setBarHeight(50)
    .setItemHeight(50)
    .addItems(orientation);
}

void menuText(){
  fill(255);

  textAlign(CENTER,CENTER);
  textFont(f, 50);
  text("Before we begin, we have some questions...", width / 2, 50);
 
  textFont(f, 30);
  text("What is your gender?", width / 4, height / 4);
  text("What is your sexual orientation?", 3 * width / 4, height / 4);

  rect(width - (2 * rectSize), height - (2 * rectSize) + 50, rectSize + 50, rectSize);

  fill(0);
  text("Next", width - (2 * rectSize) + 50, height - (2 * rectSize) + 75);
}

void controlEvent(ControlEvent theEvent){
   if(theEvent.isGroup()) {
     println("event from group : "+theEvent.getGroup().getValue()+" from "+theEvent.getGroup());  // check if the Event was triggered from a ControlGroup
   }

    else if(theEvent.isController()) {
      println("event from controller : "+theEvent.getController().getValue()+" from "+ theEvent.getController());

      if(theEvent.getController().toString().equals("Gender? [ScrollableList]")) {
        sex = theEvent.getController().getValue();
        menus.get(ScrollableList.class, "Gender?").setBarVisible(false);
      }
    }

    if(theEvent.getController().toString().equals("Orientation? [ScrollableList]")){
      lovers = theEvent.getController().getValue();
      menus.get(ScrollableList.class, "Orientation?").setBarVisible(false);
    }
}