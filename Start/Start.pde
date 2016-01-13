import controlP5.*;
import java.util.*;

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
  title();
}

void mousePressed() {
   if(mouseX > rectX && mouseX < rectX + rectSize + 50 && mouseY > rectY && mouseY < rectY + rectSize){
   background(0);
   menus();
   }
}

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