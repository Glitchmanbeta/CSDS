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

PImage bed, food, bum, park;
PImage morn1, morn2, morn3;
PImage breakfast1, breakfast2, breakfast3;
PImage train1, train2, train3;
PImage comp1a, comp1b, comp2, comp3;
PImage check, sudoku;

int cook, gen, slp, grd, hun, est;

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
  
  cook = est = gen = hun = 0;
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
  gender = Arrays.asList("Male", "Female", "Transgender", "Apache Attack Helicopter");
  orientation = Arrays.asList("Heterosexual", "Homosexual", "Bisexual", "Asexual", "I don't even know anymore.");
  
  // All the pictures are 1230 × 430 pixels.

  bed = loadImage("bed.jpg");
  food = loadImage("food.jpg");
  bum = loadImage("panhandler.jpg");
  park = loadImage("park.jpg");

  morn1 = loadImage("morning1.jpg");
  morn2 = loadImage("morning2.jpg");
  morn3 = loadImage("morning3.jpg");
  
  breakfast1 = loadImage("breakfast1.jpg");
  breakfast2 = loadImage("breakfast2.jpg");
  breakfast3 = loadImage("breakfast3.jpg");
  
  train1 = loadImage("train1.jpg");
  train2 = loadImage("train2.jpg");
  train3 = loadImage("train3.jpg");
  
  comp1a = loadImage("comp1a.jpg");
  comp1b = loadImage("comp1b.jpg");
  comp2 = loadImage("comp2.jpg");
  comp3 = loadImage("comp3.jpg");
  
  check = loadImage("check.jpg");
  sudoku = loadImage("sudoku.jpg");
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

  // Morning Block

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

  // Breakfast Block

  else if(mode.equals("Breakfast")){
    breakfast();
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

  // Train Block

  else if(mode.equals("Train")) {
    train();
  }

  else if(mode.equals("tra1")){
    tra1();
  }

  else if(mode.equals("tra2")){
    tra2();
  }

  else if(mode.equals("tra3")){
    tra3();
  }
  
  else if(mode.equals("C$")) {
    comp();
  }

  else if(mode.equals("comp1a")){
    cs1a();
  }

  else if(mode.equals("comp1b")){
    cs1b();
  }

  else if(mode.equals("comp2")){
    cs2();
  }

  else if(mode.equals("comp3")){
    cs3();
  }
  
  else if(mode.equals("sudoku-g")){
    grades();
  }
  
  else if(mode.equals("sudoku-e")){
    esteem();
  }
  
  else if(mode.equals("end")) {
    end();
  }
}

void mousePressed() {
   if(mouseX > rectX && mouseX < rectX + rectSize + 50 && mouseY > rectY && mouseY < rectY + rectSize && mode.equals("Title")){
     mode = "Menus";
     menu();
   }

   else if(mouseX > (width - (2 * rectSize)) && mouseX < width && mouseY > (height - (2 * rectSize) + 50) && mouseY < height && mode.equals("Menus")) {
     if(!(menus.get(ScrollableList.class, "Gender?").isBarVisible()) && !(menus.get(ScrollableList.class, "Orientation?").isBarVisible())) {  // Checks if the menus are visible. To proceed, you must select an option.
       mode = "Confirm";
       confirm();
     }
   }

   else if(mouseX > (width - (2 * rectSize)) && mouseX < width && mouseY > (height - (2 * rectSize) + 50) && mouseY < height && mode.equals("Confirm")){
     mode = "Morning";
     morning();
   }
   
   // ----- Sudoku -----

   else if(mouseX > leftBound && mouseX < rightBound && (mode.equals("sukodu-e")) || mode.equals("sudoku-g") || mode.equals("end")) {
      if(mouseY > leftBound && mouseY < leftBound + 430) {
        exit();
      }

      else if(mode.equals("sukodu-e")) {
        esteem();
      }
      
      else if(mode.equals("sukodu-g")) {
        grades();
      }

      else if(mode.equals("end")) {
        end();
      }
   }

   // ----- CompSci Dating Scene -----

   else if(mouseX > leftBound && mouseX < rightBound && mode.equals("comp3")) {
      if(mouseY > leftBound && mouseY < leftBound + 430) {
        exit();
      }

      else {
        cs3();
      }
   }

   else if(mouseX > leftBound && mouseX < rightBound && mode.equals("comp2")) {
      if(mouseY > leftBound && mouseY < leftBound + 430) {
        if(grd < 80) {
          mode = "sudoku-g";
          grades();
        }
        
        else {
          mode = "end";
          end();
        }
      }

      else {
        cs2();
      }
   }

   else if(mouseX > leftBound && mouseX < rightBound && mode.equals("comp1b")) {
      if(mouseY > leftBound && mouseY < leftBound + 430) {
        if(est < -3) {
          mode = "sudoku-e";
          esteem();
        }
        
        else {
          mode = "end";
          end();
        }
      }

      else {
        cs1b();
      }
   }

   else if(mouseX > leftBound && mouseX < rightBound && mode.equals("comp1a")) {
      if(mouseY > leftBound && mouseY < leftBound + 430) {
        exit();
      }

      else {
        cs1a();
      }
   }

   else if(mouseX > leftBound && mouseX < rightBound && mode.equals("C$")) {
      if(mouseY > choice1 && mouseY < choice1 + choiceHeight) {
        if(gen > 1) {
          mode = "comp1a";
          cs1a();
        }
        
        else {
          est -= 3;

          mode = "comp1b";
          cs1b();
        }
      }
       
      else if(mouseY > choice2 && mouseY < choice2 + choiceHeight) {
        grd -= 10;

        mode = "comp2";
        cs2();
      }
       
      else if(mouseY > choice3 && mouseY < choice3 + choiceHeight) {
        mode = "comp3";
        cs3();
      }
    }

   
    // --------------- Train Block ---------------

    else if(mouseX > leftBound && mouseX < rightBound && (mode.equals("tra1") || mode.equals("tra2") || mode.equals("tra3"))) {
      if(mouseY > leftBound && mouseY < leftBound + 430) {
        mode = "C$";
        comp();
      }

      else if(mode.equals("tra1")){
        tra1();
      }

      else if(mode.equals("tra2")){
        tra2();
      }

      else if(mode.equals("tra3")){
        tra3();
      }
    }

   else if(mouseX > leftBound && mouseX < rightBound && mode.equals("Train")) {
      if(mouseY > choice1 && mouseY < choice1 + choiceHeight) {
        gen += 2;

        mode = "tra1";
        tra1();
      }
       
      else if(mouseY > choice2 && mouseY < choice2 + choiceHeight) {
        gen += 1;

        mode = "tra2";
        tra2();
      }
       
      else if(mouseY > choice3 && mouseY < choice3 + choiceHeight) {
        gen -= 2;

        mode = "tra3";
        tra3();
      }
      
      else {
        comp();
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
        est += 1;

        mode = "break1";
        break1();
      }
       
      else if(mouseY > choice2 && mouseY < choice2 + choiceHeight) {
        hun += 6;

        mode = "break2";
        break2();
      }
       
      else if(mouseY > choice3 && mouseY < choice3 + choiceHeight) {
        cook += 1;
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