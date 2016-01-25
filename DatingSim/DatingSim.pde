import controlP5.*;
import java.util.*;

String mode;
PFont f;

int rectX, rectY; //For the start button
int rectSize = 60; //Same as above

ControlP5 menus;

List gender, orientation;
float sex, lovers;

// Choice Variables

int choice1, choice2, choice3, choiceHeight;
int leftBound, rightBound, rectWidth, rectHeight;

PFont description, choice_font;
PImage bed, food, bum, park, bsod;

int slp, grd, hun, est;
int gen = hun = 0;

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

  f = createFont("papyrus.ttf", 60, true);

  rectX = width / 2 - (rectSize + 50) / 2;
  rectY = height / 2 - rectSize;
  
  leftBound = height / 20;
  rightBound = 19 * height / 20;
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
  
  gen = 0;
  slp = 100;
  grd = 100;
  hun = 0;
  est = 0;
}

void draw(){
  background(0);
  textFont(f);
  
  if(mode.equals("Title")){
    title();
  }

  if(mode.equals("Menus")){
    menuText();
  }

  if(mode.equals("Confirm")){
    confirm();
  }

  if(mode.equals("Morning")){
    morning();
  }
  
  if(mode.equals("Breakfast")){
    breakfast();
  }
  
  if(mode.equals("Train")) {
    train();
  }
  
  if(mode.equals("C$")) {
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
   
   else if(mouseX > leftBound && mouseX < rightBound && mode.equals("Morning")) {
      if(mouseY > choice1 && mouseY < choice1 + choiceHeight) {
        grd += 2;

        mode = "Breakfast";
        breakfast();
      }
       
      else if(mouseY > choice2 && mouseY < choice2 + choiceHeight) {
        grd -= 2;

        mode = "Breakfast";
        breakfast();
      }
       
      else if(mouseY > choice3 && mouseY < choice3 + choiceHeight) {
        est -= 2;
        mode = "Breakfast";
        breakfast();
      }
      
      else {
        breakfast();
      }
    }
}