import controlP5.*;
import java.util.*;

String mode;
PFont f;
int rectX, rectY;
int rectSize = 50;
color rectColor, rectHighlight;
color currentColor;
ControlP5 menus;
List gender;
List orientation;

void setup(){
  fullScreen();
  mode = "Title";
  f = createFont("Comic Sans MS", 68, true);
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
  if(mode.equals("Menus");
}

void mousePressed() {
   if(mouseX > rectX && mouseX < rectX + rectSize + 50 && mouseY > rectY && mouseY < rectY + rectSize){
   menus();
   mode = "Menus";
   }
}