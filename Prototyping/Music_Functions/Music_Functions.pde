import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//All Global Variables execute first ... A Global Variable is a Global Variable
int appWidth, appHeight;
float quitX, quitY, quitWidth, quitHeight;
float playX, playY, playWidth, playHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColorBackground, playColorSymbol, playColorBackgroundActivated, playColorSymbolActivated;
color quitBackground, quitBackgroundActivated;
Boolean nightMode=false;
/*
void settings() {
 println(displayWidth, displayHeight);
 int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
 shorterSide *= 0.9; //90%, WINDOW Frame
 size(shorterSide, shorterSide); //ERROR IllegalStateException: cannot use a var in size()
 println("Display Questions", displayWidth, displayHeight, shorterSide);
 println("CANVAS Size Key Variables for setup()", width, height);
 } //End settings
 */
void setup() {
  //Display CANVAS
  size(1200, 800); //width //height
  //fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  divPopulation();
  DIVs();
  musicButtonShapes();
  nightMode = false; //initialization in setup() only
  colorPopulation();
  //
} //End setup
//
void draw() {
  //println("my mouse is", mouseX, mouseY);
  //println(playButton);
  hoverOver_draw(); //See Buttons
} //End draw
//
void mousePressed() {
  if (mouseX>quitX && mouseY<quitY+quitWidth && mouseX>quitX && mouseY<quitY+quitHeight) {
    quitButton();
  }
} //End Mouse Pressed
//
void keyPressed() {
  if (key == 'Q' || key == 'q') { // Removed semicolon
    quitButton();
  }
  if (key == 'D' || key == 'd') { // Removed semicolon
    colorPopulation();
  }
} //End Key Pressed
//
//
//End MAIN Program
