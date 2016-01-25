import controlP5.*;
import java.util.*;

String mode;
PFont f;

int rectX, rectY; // For the start button.
int rectSize = 60; // Also for the start button.

ControlP5 menus;

List gender, orientation;
float sex, lovers;

// Choice Variables

int choice1, choice2, choice3, choiceHeight;
int leftBound, rightBound, rectWidth, rectHeight;

PFont description, choice_font, stat_font;

PImage bed, food, bum, park, bsod;
PImage man_morn1, man_morn2, man_morn3, woman_morn1, woman_morn2, woman_morn3;
PImage breakfast1, breakfast2, breakfast3;


int gen, slp, grd, hun, est;

/*
gen is Generocity
slp is Sleep
grd is Grades
hun is Hunger
est is Self Esteem
*/

void setup(){
  size(1280, 720);
  mode = "Title";
  
  est = gen = hun = 0;
  slp = -1;
  grd = 90;

  f = createFont("papyrus.ttf", 60, true);
  description = createFont("papyrus.ttf", 16);
  choice_font = createFont("papyrus.ttf", 20);
  stat_font = createFont("papyrus.ttf", 24);

  rectX = width / 2 - (rectSize + 50) / 2;
  rectY = height / 2 - rectSize;
  
  leftBound = height / 20;
  rightBound = width - height / 20;
  rectWidth = width - height / 10;
  rectHeight = 9 * height / 10;
    
  choice1 = 76 * height / 100;
  choice2 = 82 * height / 100;
  choice3 = 88 * height / 100;
  choiceHeight = 5 * height / 100;

  menus = new ControlP5(this);
  gender = Arrays.asList("Male", "Female", "Trans", "Apache Attack Helicopter");
  orientation = Arrays.asList("Heterosexual", "Homosexual", "Bisexual", "Asexual", "I don't even know anymore.");
  
  // All the pictures are 1230 × 430 pixels.

  bed = loadImage("bed.jpg");
  food = loadImage("food.jpg");
  bum = loadImage("panhandler.jpg");
  park = loadImage("park.jpg");
  bsod = loadImage("bsod.jpg");

  man_morn1 = loadImage("man_morning1.jpg");
  man_morn2 = loadImage("man_morning2.jpg");
  man_morn3 = loadImage("man_morning3.jpg");
  woman_morn1 = loadImage("woman_morning1.jpg");
  woman_morn2 = loadImage("woman_morning2.jpg");
  woman_morn3 = loadImage("woman_morning3.jpg");
  
  breakfast1 = loadImage("breakfast1.jpg");
  breakfast2 = loadImage("breakfast2.jpg");
  breakfast3 = loadImage("breakfast3.jpg");
}

void draw(){
  background(0);
  textFont(f);
  
  if(mode.equals("Title")){
    title();
  }

  else if(mode.equals("Menus")){
    menuText();
  }

  else if(mode.equals("Confirm")){
    confirm();
  }

  else if(mode.equals("Morning")){
    morning();
  }

  else if(mode.equals("morn1")){
    morn1();
  }

  else if(mode.equals("morn2")){
    morn2();
  }

  else if(mode.equals("morn3")){
    morn3();
  }

  else if(mode.equals("Breakfast")){
    breakfast();
  }
  
  else if(mode.equals("Train")) {
    train();
  }
  
  else if(mode.equals("C$")) {
    comp();
  }

  if(mode.equals("bsod")){
    bsod();
  }
}

void mousePressed() {
   if(mouseX > rectX && mouseX < rectX + rectSize + 50 && mouseY > rectY && mouseY < rectY + rectSize && mode.equals("Title")){
     mode = "Menus";
     menu();
   }

   else if(mouseX > (width - (2 * rectSize)) && mouseX < width && mouseY > (height - (2 * rectSize) + 50) && mouseY < height && mode.equals("Menus")) {
     // Checks if the menus are visible. To proceed, you must select an option.
     if(!(menus.get(ScrollableList.class, "Gender?").isBarVisible()) && !(menus.get(ScrollableList.class, "Orientation?").isBarVisible())) {
       mode = "Confirm";
       confirm();
     }
   }

   else if(mouseX > (width - (2 * rectSize)) && mouseX < width && mouseY > (height - (2 * rectSize) + 50) && mouseY < height && mode.equals("Confirm")){
     mode = "Morning";
     morning();
   }
   
   else if(mouseX > leftBound && mouseX < rightBound && mode.equals("C$")) {
      if(mouseY > choice1 && mouseY < choice1 + choiceHeight) {
        //mode = "C";
        gen =+ 2;
        mode = "bsod";
        bsod();
      }
       
      else if(mouseY > choice2 && mouseY < choice2 + choiceHeight) {
        //mode = "C";
        mode = "bsod";
        gen -= 2;
        bsod();
      }
       
      else if(mouseY > choice3 && mouseY < choice3 + choiceHeight) {
        //mode = "C";
        mode = "bsod";
        bsod();
      }
    }
   
   else if(mouseX > leftBound && mouseX < rightBound && mode.equals("Train")) {
      if(mouseY > choice1 && mouseY < choice1 + choiceHeight) {
        gen += 2;
        mode = "C$";
        comp();
      }
       
      else if(mouseY > choice2 && mouseY < choice2 + choiceHeight) {
        mode = "C$";
        comp();
      }
       
      else if(mouseY > choice3 && mouseY < choice3 + choiceHeight) {
        gen -= 2;
        mode = "C$";
        comp();
      }
      
      else {
        comp();
      }
    }
   
   else if(mouseX > leftBound && mouseX < rightBound && mode.equals("Breakfast")) {
      if(mouseY > choice1 && mouseY < choice1 + choiceHeight) {
        hun += 2;
        mode = "Train";
        train();
      }
       
      else if(mouseY > choice2 && mouseY < choice2 + choiceHeight) {
        est -= 2;
        mode = "Train";
        train();
      }
       
      else if(mouseY > choice3 && mouseY < choice3 + choiceHeight) {
        est -= 2;
        mode = "Train";
        train();
      }
      
      else {
        train();
      }
    }
    
    // --------------- Breakfast Block ---------------

    else if(mouseX > leftBound && mouseX < rightBound && (mode.equals("break1") || mode.equals("break2") || mode.equals("break3"))) {
      if(mouseY > leftBound && mouseY < leftBound + 430) {
        mode = "Train";
         train();
      }

      else if(mode.equals("break1")){
        break1();
      }

      else if(mode.equals("break2")){
        break2();
      }

      else if(mode.equals("break3")){
        break3();
      }
    }

    else if(mouseX > leftBound && mouseX < rightBound && mode.equals("Breakfast")) {
      if(mouseY > choice1 && mouseY < choice1 + choiceHeight) {
        hun -= 3;

        mode = "break1";
        break1();
      }
       
      else if(mouseY > choice2 && mouseY < choice2 + choiceHeight) {
        hun += 6;

        mode = "break2";
        break2();
      }
       
      else if(mouseY > choice3 && mouseY < choice3 + choiceHeight) {
        hun += 6;
        est += 2;

        mode = "break3";
        break3();
      }
      
      else {
        breakfast();
      }
    }
    
    // --------------- Morning Block ---------------

    else if(mouseX > leftBound && mouseX < rightBound && (mode.equals("morn1") || mode.equals("morn2") || mode.equals("morn3"))) {
      if(mouseY > leftBound && mouseY < leftBound + 430) {
        mode = "Breakfast";
        breakfast();
      }

      else if(mode.equals("morn1")){
        morn1();
      }

      else if(mode.equals("morn2")){
        morn2();
      }

      else if(mode.equals("morn3")){
        morn3();
      }
    }

   else if(mouseX > leftBound && mouseX < rightBound && mode.equals("Morning")) {
      if(mouseY > choice1 && mouseY < choice1 + choiceHeight) {
        grd += 5;

        mode = "morn1";
        morn1();
      }
       
      else if(mouseY > choice2 && mouseY < choice2 + choiceHeight) {
        slp += 1;
        grd -= 5;

        mode = "morn2";
        morn2();
      }
       
      else if(mouseY > choice3 && mouseY < choice3 + choiceHeight) {
        grd -= 5;
        est -= 2;

        mode = "morn3";
        morn3();
      }
      
      else {
        morning();
      }
    }
}