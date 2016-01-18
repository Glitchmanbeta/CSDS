import controlP5.*;
import java.util.*;

String mode; //Tells the game what it should display in draw()
PFont f; //Standarizes font
int rectX, rectY; //For the start button
int rectSize = 50; //Same as above
color rectColor, rectHighlight;//Same as above
color currentColor;//Same as above
ControlP5 menus; // Next three are the menus
List gender;
List orientation;
float sex; //Keeps track of the gender selected
float lovers; //Keeps track of the orientation selected

void setup(){
  fullScreen();
  mode = "Title";
  f = createFont("Papyrus", 68, true);
  rectColor = color(128);
  rectHighlight = color(102);
  rectX = width/2 - (rectSize + 50)/2;
  rectY = height/2 - rectSize/2;
  menus = new ControlP5(this);
  gender = Arrays.asList("Male", "Female", "Trans", "Apache Attack Helicopter");
  orientation = Arrays.asList("Heterosexual", "Homosexual", "Bisexual", "Asexual", "I don't even know anymore.");
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
}

void mousePressed() {
   if(mouseX > rectX && mouseX < rectX + rectSize + 50 && mouseY > rectY && mouseY < rectY + rectSize && mode.equals("Title")){
   menu();
   mode = "Menus";
   }
   //if(mouseX < width && mouseY < height && mode.equals("Menus")){
   if(mouseX > (width - (2 * rectSize)) && mouseX < width && mouseY > (height - (2 * rectSize) + 50) && mouseY < height && mode.equals("Menus")){
     confirm();
     mode = "Confirm";
   }
   if(mouseX > (width - (2 * rectSize)) && mouseX < width && mouseY > (height - (2 * rectSize) + 50) && mouseY < height && mode.equals("Confirm")){
     //Start here Kai!
   }
}